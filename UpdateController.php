<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;

use Illuminate\Support\Facades\File;
use PharData;
use ZipArchive;

class UpdateController extends Controller
{
    public function getServerProtocol()
    {
        $protocol = env('APP_PROTOCOL', 'https'); // default ke http jika tidak ada

        if (in_array($protocol, ['http', 'https'])) {
            return $protocol;
        }

        return 'unknown';
    }

    public function checkUpdate(Request $request)
    {
        if ($request->user()->role != 'Admin') {
            return redirect()->route('home');
        }

        $randomNumber = rand(10000, 99999);
        $serverProtocol = $this->getServerProtocol();
        $currentVersion = config('app.version');
        $checkUrl = "https://api.democishop.my.id/update/check?v=$currentVersion&lang=" . config('app.locale') . "&rand=" . $randomNumber;

        try {
            $response = Http::timeout(10)->get($checkUrl);
            $data = $response->json();


            if (isset($data['update_available']) && $data['update_available']) {
                $whats_new = base64_decode($data['whats_new']);
                return view('components.admin.update', ['updateAvailable' => $data['update_available'], 'newVersion' => $data['new_version'], 'updateSSL' => $data['ssl'], 'after' => $data['after'], 'before' => $data['before'], 'whatsNew' => $whats_new, 'serverProtocol' => $serverProtocol]);
            } else {
                return view('components.admin.update', ['updateAvailable' => false, 'newVersion' => '']);
            }
        } catch (\Exception $e) {
            return view('components.admin.update', ['updateAvailable' => false, 'newVersion' => '']);
        }
    }

    public function installUpdate(Request $request)
    {
        if ($request->user()->role != 'Admin') {
            return redirect()->route('home');
        }

        $randomNumber = rand(10000, 99999);

        $newVersion = $request->input('version');
        $sslInput = $request->input('ssl');
        $beforeInput = $request->input('before');
        $afterInput = $request->input('after');
        $emailUpdate = env('EMAIL_UPDATE');
        $domainUpdate = env('DOMAIN_UPDATE');
        $waUpdate = env('WA_ADMIN');
        $appUrl = env('APP_URL');

        $newVersionUrl = "https://api.democishop.my.id/update/download?v=$newVersion&email=" . urlencode($emailUpdate) . "&rand=$randomNumber&domain=$domainUpdate&wa_number=$waUpdate&app_url=$appUrl";
        $file = 'update.zip';
        $zipFile = Storage::path($file);
        $response = file_get_contents($newVersionUrl);
        
        
        if ($response == "invalidemail") {
            return redirect()->route('update')->with('error', __('invalid Email Update'));
        } elseif ($response == "invalidnomor") {
            return redirect()->route('update')->with('error', __('invalid Wa Admin'));
        } elseif ($response == "invaliddomain") {
                return redirect()->route('update')->with('error', __('invalid Domain Update'));
        } elseif ($response == "emptyappurl") {
            return redirect()->route('update')->with('error', __('APP URL Not Found'));
        } elseif ($response != "") {
            Storage::put($file, $response);
            if (class_exists('ZipArchive')) {
                $zip = new ZipArchive;
                if ($zip->open($zipFile) === TRUE) {
                
                    $zip->extractTo(base_path());
                    $zip->close();
                }
            } elseif (class_exists('PharData')) {
                $phar = new PharData($zipFile);
                $phar->extractTo(base_path());
            } else {
                return redirect()->route('update')->with('error', __('Failed to download update file. (zip-100)'));
            }

            Storage::delete($file);
            
            return redirect()->route('update')->with('status', __('Successfully updated to version (:version)', ['version' => $newVersion]));
        } else {
            return redirect()->route('update')->with('error', __('Failed to download update file.'));
        }

    }
}

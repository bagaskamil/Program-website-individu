<?php
namespace App\Observers;

use App\Models\Pembelian;
use Illuminate\Support\Facades\Http;

class PembelianObserver
{
    public function updated(Pembelian $pembelian)
    {
        // Cek apakah kolom status berubah
        if ($pembelian->isDirty('status')) {
            // Kirim request ke endpoint jika status berubah menjadi 'Sukses' atau 'Pending'
            if (in_array($pembelian->status, ['Sukses', 'Pending'])) {
                Http::post('https://domain.com/send', [
                    'order_id' => $pembelian->order_id,
                    'status' => $pembelian->status, 
                ]);
            }
        }
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WhitelistApi extends Model
{
    protected $table = 'whitelist_ip_api'; // Nama tabel yang sesuai
    protected $fillable = ['ip_address']; // Kolom yang dapat diisi
}

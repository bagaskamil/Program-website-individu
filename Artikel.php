<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    use HasFactory;
    protected $guarded = [];
    
    public function tags(){
        return $this->belongsTo(ArtikelTag::class,'artikel_id');
    }
}

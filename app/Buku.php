<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Buku extends Model
{
    public $table ='buku';
    protected $fillable =[
        'judul','tahun_terbit','penerbit','penulis','jumlah_eksemplar','sampul'
    ];

    public function kategori()
    {
        return $this->belongsToMany(Kategori::class);
    }
}

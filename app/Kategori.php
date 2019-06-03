<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    public $table = 'kategori';
    protected $fillable =['nama','deskripsi'];
    public function buku()
    {
        return $this->belongsToMany(Buku::class);
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    protected $table = 'transaksi';
    protected $fillable =['siswa_id','buku_id','jumlah','tgl_pinjam','tgl_kembali','status'];
}

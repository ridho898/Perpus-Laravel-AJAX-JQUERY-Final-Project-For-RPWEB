<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Carbon\Carbon;

class TransaksiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

        $now = Carbon::now();
        $dist=$this->tgl_kembali->DiffInDays($now,false);
        if ($dist >=0) {
            $denda = '<span  class="text-red">telat '.($dist+1) .' hari Rp.'.($dist+1)*2000 .' </span>';        
        } else {
            $denda = '<span  class="text-green">Tidak ada denda</span>';
        }
        
        return [
            'id'=>$this->id,
            'nama'=>$this->siswa->nama,
            'judul'=>$this->buku->judul,
            'tgl_pinjam'=>$this->tgl_pinjam->isoFormat('dddd D MMM Y'),
            'tgl_kembali'=>$this->tgl_kembali->isoFormat('dddd D MMM Y').' (' .Carbon::now()->diffInDays($this->tgl_kembali).' Hari)',
            'status'=>$this->status,
            'jumlah'=>$this->jumlah,
            'denda'=>$denda,
            'perpanjang'=>'<a class="btn btn-info btn-sm btn-perpanjang" id="'.$this->id.'"><i class="fa fa-calendar-plus-o"> perpanjang</i></a>',
            'kembali'=>'<a class="btn btn-info btn-sm btn-kembali" id="'.$this->id.'"><i class="fa fa-sign-out"> Kembali</i></a>',
            'tgl_pengembalian'=>$this->updated_at->isoFormat('dddd D MMM Y')
        ];
    }
}

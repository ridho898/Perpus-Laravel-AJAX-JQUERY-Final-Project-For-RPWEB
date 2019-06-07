<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BukuResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'judul'=>$this->judul,
            'tahun_terbit'=>$this->tahun_terbit,
            'penerbit'=>$this->penerbit,
            'penulis'=>$this->penulis,
            'jumlah_eksemplar'=>$this->jumlah_eksemplar,
            'sampul'=>$this->sampul,
            'kategori'=>$this->kategori,
            'action'=>'<a data-toggle="modal" data-target="#myModal" class="btn btn-warning btn-sm btn-edit" id="'.$this->id.'"><i class="fa fa-edit"></i></a> <a class="btn btn-sm btn-danger btn-delete" id="'.$this->id.'"><i class="fa fa-trash-o"></i></a>',
            'pinjam'=>'<a class="btn btn-warning btn-sm btn-pinjam" id="'.$this->id.'"><i class="fa fa-plus"></i></a>'
        ];
    }
}

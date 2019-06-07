<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class siswaResource extends JsonResource
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
            'nis'=>$this->nis,
            'nama'=>$this->nama,
            'text'=>'('.$this->nis.')'.' '.$this->nama,
            'alamat'=>$this->alamat,
            'notelp'=>$this->notelp,
            'kelas'=>$this->kelas,
            'email'=>$this->user->email,
            'avatar'=>'<img src="/storage/'.$this->avatar.'" alt="" width="50px">',
            'picture'=>$this->avatar,
            'action'=>'<a data-toggle="modal" data-target="#myModal" class="btn btn-warning btn-sm btn-edit" id="'.$this->id.'"><i class="fa fa-edit"></i></a> <a class="btn btn-sm btn-danger btn-delete" id="'.$this->id.'"><i class="fa fa-trash-o"></i></a>'
           
        ];
    }
}

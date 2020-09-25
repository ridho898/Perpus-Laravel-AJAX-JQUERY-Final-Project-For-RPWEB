<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Postboard extends Model
{
    protected $table = 'postboard';
    protected $fillable = ['id','judul','deskripsi','img','admin_id'];
    
    public function admin(){
    	return $this->belongsTo(Admin::class);
    }

    public function getShortDescription()
    {
        return substr($this->deskripsi,0,80).'...';
    }
    
}

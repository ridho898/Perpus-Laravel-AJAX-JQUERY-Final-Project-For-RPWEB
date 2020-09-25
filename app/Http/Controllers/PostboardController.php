<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Postboard;
use App\Http\Resources\PostboardResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Hash;
use Auth;
use DB;
use App\User;

class PostboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('postboard.index');
    }

    public function getAllPostboard()
    {
        $datapostboard = PostboardResource::collection(Postboard::all());
        return response()->json($datapostboard);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'judul'=>'required',
            'deskripsi'=>'required',
            'img'=>'required',            
        ]);            
        $img='';
        if ($request->img) {
            $img = $request->img->store('imgs','public');
        }
        $userid = DB::table('admin')->select('id')->where('user_id',Auth::user()->id)->get();
        foreach ($userid as $name) {
                    $u_id = $name->id;
        }
        $postboard = Postboard::create([
            'judul'=>$request->judul,
            'deskripsi'=>$request->deskripsi, 
            'img'=>$img,             
            'admin_id'=>$u_id                         
        ]);        
        if ($postboard) {
            return response()->json([
                'success'=>true,
                'type'=> 'add',
                'message'=>'Berhasil Menambahkan Postboard',
            ]);
        }
        return response()->json([
            'success'=>false,
            'type'=> 'add',
            'message'=>'Gagal Menambahkan Postboard'
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Postboard  $postboard
     * @return \Illuminate\Http\Response
     */
    public function show(Postboard $postboard)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Postboard  $postboard
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $postboard = Postboard::findOrFail($id);
        $postboardresource = new PostboardResource($postboard);
        return response()->json($postboardresource);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Postboard  $postboard
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $postboard = Postboard::findOrFail($id);
        $request->validate([        
            'judul'=>'required',
            'deskripsi'=>'required',        
        ]);

        $img = $postboard->img;
        if ($request->img) {
            if ($postboard->img && file_exists(storage_path('app/public/'.$postboard->img))) {
                Storage::delete('public/'.$postboard->img);
            }
            $file = $request->img->store('imgs','public');
            $img = $file;
        }

        $postboard->update([
            'judul'=>$request->judul,
            'deskripsi'=>$request->deskripsi,            
            'img'=>$img,
        ]);                

        if ($postboard) {
            return response()->json([
                'success'=>true,
                'type'=> 'update',
                'message'=>'Berhasil Mengubah Postboard',
            ]);
        }
        return response()->json([
            'success'=>false,
            'type'=> 'update',
            'message'=>'Gagal Mengubah Postboard'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Postboard  $postboard
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $postboard = Postboard::findOrFail($id);
        if ($postboard->img && file_exists(storage_path('app/public/'.$postboard->img))) {
            Storage::delete('public/'.$postboard->img);
        }        
        $postboard->delete();
            if ($postboard) {
                return response()->json([
                    'success'=>true,
                    'type'=> 'delete',
                    'message'=>'Berhasil Menghapus Postboard'
                ]);
            }
            return response()->json([
                'success'=>false,
                'type'=> 'delete',
                'message'=>'Gagal Menghapus Postboard'
            ]);
    }
}

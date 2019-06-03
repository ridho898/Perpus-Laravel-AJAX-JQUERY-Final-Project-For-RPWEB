<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\BukuResource;
use App\Buku;
use Illuminate\Support\Facades\Storage;

class BukuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('buku.index');
    }

    public function getAllBuku()
    {
        $databuku = BukuResource::collection(Buku::all());
        return response()->json($databuku);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
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
            'tahun_terbit'=>'required',
            'penerbit'=>'required',
            'penulis'=>'required',
            'jumlah_eksemplar'=>'required',
            'sampul'=>'required'
        ]);
        $foto='';
        if ($request->sampul) {
            $foto = $request->sampul->store('sampuls','public');
        }
        $buku = Buku::create([
            'judul'=>$request->judul,
            'tahun_terbit'=>$request->tahun_terbit,
            'penerbit'=>$request->penerbit,
            'penulis'=>$request->penulis,
            'jumlah_eksemplar'=>$request->jumlah_eksemplar,
            'sampul'=>$foto
        ]);

        $buku->kategori()->attach($request->kategori);
        if ($buku) {
            return response()->json([
                'success'=>true,
                'type'=> 'add',
                'message'=>'Berhasil Menambahkan Buku',
                'buku'=>$buku
            ]);
        }
        return response()->json([
            'success'=>false,
            'type'=> 'add',
            'message'=>'Gagal Menambahkan Buku'
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $buku = Buku::findOrFail($id);
        $bukuresource = new BukuResource($buku);
        return response()->json($bukuresource);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $buku = Buku::findOrFail($id);
        $request->validate([
            'judul'=>'required',
            'tahun_terbit'=>'required',
            'penerbit'=>'required',
            'penulis'=>'required',
            'jumlah_eksemplar'=>'required',
        ]);
        $sampul = $buku->sampul;
        if ($request->sampul) {
            if ($buku->sampul && file_exists(storage_path('app/public/'.$buku->sampul))) {
                Storage::delete('public/'.$buku->sampul);
            }
            $file = $request->sampul->store('sampuls','public');
            $sampul = $file;
        }
        $buku->update([
            'judul'=>$request->judul,
            'tahun_terbit'=>$request->tahun_terbit,
            'penerbit'=>$request->penerbit,
            'penulis'=>$request->penulis,
            'jumlah_eksemplar'=>$request->jumlah_eksemplar,
            'sampul'=>$sampul
        ]);

        $buku->kategori()->sync($request->kategori);
        if ($buku) {
            return response()->json([
                'success'=>true,
                'type'=> 'update',
                'message'=>'Berhasil Mengubah Buku',
                'buku'=>$buku
            ]);
        }
        return response()->json([
            'success'=>false,
            'type'=> 'update',
            'message'=>'Gagal Mengubah Buku'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $deletebuku = Buku::where('id',$id)->delete();
            if ($deletebuku) {
                return response()->json([
                    'success'=>true,
                    'type'=> 'delete',
                    'message'=>'Berhasil Menghapus Buku'
                ]);
            }
            return response()->json([
                'success'=>false,
                'type'=> 'delete',
                'message'=>'Gagal Menghapus Buku'
            ]);
    }
}

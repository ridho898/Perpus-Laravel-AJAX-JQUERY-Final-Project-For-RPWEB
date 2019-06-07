<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Buku;
use App\Siswa;
use App\Transaksi;
use Carbon\Carbon;
use Carbon\CarbonImmutable;

class TransaksiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        //
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function peminjamanCreate()
    {
        $bukuall = Buku::all();
        return view('peminjaman.create',compact('bukuall'));
    }

    public function peminjamanStore(Request $request)
    {
        // return $request->all();
        $siswa = Siswa::findOrFail($request->siswa_id);
        $tanggal_pinjam = Carbon::now();
        $tanggal_kembali = CarbonImmutable::now()->add(7,'day');
        for ($i=0; $i < count($request->buku_id); $i++) { 
            $transaksi = Transaksi::create([
                'siswa_id'=>$siswa->id,
                'buku_id'=>$request->buku_id[$i],
                'tgl_pinjam'=>$tanggal_pinjam,
                'tgl_kembali'=>$tanggal_kembali,
                'status'=>'pinjam',
                'jumlah'=>$request->jumlah[$i]
            ]);    
            $buku = Buku::findOrFail($request->buku_id[$i]);
            $tempJumlah = $buku->jumlah_eksemplar;
            $buku->update([
                'jumlah_eksemplar'=>($tempJumlah-$request->jumlah[$i])
            ]);
        }

        if ($transaksi) {
            return response()->json([
                'success'=>true,
                'message'=>'Berhasil Menambah Buku Pinjaman',
            ]);
        }
        return response()->json([
            'success'=>false,
            'message'=>'Gagal Menambah Buku pinjaman'
        ]);
        
    }

    public function getApiPeminjaman()
    {
        
    }
}

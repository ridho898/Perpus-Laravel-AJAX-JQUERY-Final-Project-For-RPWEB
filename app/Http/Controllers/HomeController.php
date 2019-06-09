<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
use App\Transaksi;
use App\Kategori;
use App\Buku;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $jmlsiswa = Siswa::count();
        $jmlbuku = Buku::count();
        $jmlkategori = Kategori::count();
        $jmltransaksi = Transaksi::count();
        // $nama = '';
        // if (Auth::user()->admin != null) {
        //     dd('admin'.Auth::user()->admin->nama);
        // }else{
        //     dd('user'.Auth::user()->siswa->nama);
        // }
        
        return view('home',compact('jmlsiswa','jmlbuku','jmlkategori','jmltransaksi'));
    }
}

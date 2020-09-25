<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
use App\Admin;
use App\Transaksi;
use App\Kategori;
use App\Buku;
use App\Postboard;
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
        $jmlpost = Postboard::count();
        $jmltransaksi = Transaksi::count();
        $datapostboard = Postboard::leftJoin('admin','postboard.admin_id','=','admin.id')->limit(4)->get();        
        return view('home',compact('jmlsiswa','jmlbuku','jmlpost','jmltransaksi','datapostboard'));
    }
}

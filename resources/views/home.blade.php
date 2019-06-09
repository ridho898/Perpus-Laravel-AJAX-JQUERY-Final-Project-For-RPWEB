@extends('template.master')
@section('breadcumbs')
    <h1>
        Dashboard
        <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="active">Dashboard</li>
    </ol>
@endsection
@section('content')
     <!-- Small boxes (Stat box) -->
     <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Selamat Datang  {{ Auth::user()->admin->nama ?? Auth::user()->siswa->nama }}</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            
              <div class="box-body text-center">
                <h1>Sistem Informasi Perpustakaan Sekolah</h1>
                <img src="{{ asset('images/library.png') }}" alt="" width="200">
              </div>
              <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
     @if (Auth::user()->role == 'admin')
         <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>{{ $jmlsiswa }}</h3>
    
                  <p>Siswa</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="{{ route('siswa.index') }}" class="small-box-footer">View All <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>{{ $jmlbuku }}</h3>
    
                  <p>Buku</p>
                </div>
                <div class="icon">
                  <i class="ion ion-ios-book"></i>
                </div>
                <a href="{{ route('buku.index') }}" class="small-box-footer">View All <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>{{ $jmlkategori }}</h3>
    
                  <p>Kategori</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bookmark"></i>
                </div>
                <a href="{{ route('kategori.index') }}" class="small-box-footer">View All <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>{{ $jmltransaksi }}</h3>
                  <p>Transaksi</p>
                </div>
                <div class="icon">
                  <i class="ion ion-ios-bookmarks"></i>
                </div>
                <a href="{{ route('peminjaman.index') }}" class="small-box-footer">View All <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
          </div>
     @endif
        </section>
     
@endsection
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
            
              <div class="box-body">
                <div class="row text-center text-middle">
                  <div class="col-md-6" style="padding-top:75px">
                    <h1>Sistem Informasi Perpustakaan Sekolah</h1>
                    <blockquote>
                      <p>The more that you read, the more things you will know</p>
                      <small>Dr Seuss</small>
                    </blockquote>
                  </div>
                  <div class="col-md-6">
                    <img src="{{ asset('images/banner.png') }}" width="500px" alt="">
                  </div>
                </div>
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
                  <h3>{{ $jmlpost }}</h3>
    
                  <p>Post</p>
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
     <div class="row">
        @foreach ($datapostboard as $row)  
          <div class="col-md-6">
            <!-- Box Comment -->
            <div class="box box-widget">
              <div class="box-header with-border">
                <div class="user-block">
                  <img class="img-circle" src="{{ asset('images/ava.png') }}" alt="User Image">
                  <span class="username"><a>{{ $row->judul }}</a></span>
                  <span class="description">{{ $row->nama }} - {{ $row->updated_at->diffForHumans() }}</span>
                </div>
                <!-- /.user-block -->
                <div class="box-tools">
                  <button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Mark as read">
                    <i class="fa fa-circle-o"></i></button>
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
                <!-- /.box-tools -->
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <img class="img-responsive pad" src="{{ asset('storage/'.$row->img) }}" alt="Photo">
                <p>{{ $row->deskripsi }}</p>
              </div>
              <!-- /.box-body -->
            </div>
            <!-- /.box -->
          </div>
          <!-- /.col -->
        @endforeach
    </div>
    <!-- /.row -->
        </section>
@endsection
@extends('template.master')
@section('breadcumbs')
    <h1>
        Pengembalian
    </h1>
    <ol class="breadcrumb">
        <li class="active">Data Pengembalian Buku
        </li>
    </ol>
@endsection
@section('content')  
      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-xs-12">
            <div class="box">
              <div class="box-header">
                <h3 class="box-title">Data Peminjam Buku</h3>
                <a id="btn-add" href="{{ route('pengembalian.create') }}" class="btn btn-info btn-sm pull-right"><i class="fa fa-sign-out"></i> Pengembalian Buku</a>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <table id="tabel-pengembalian" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>nama</th>
                    <th>judul</th>
                    <th>Tanggal Pinjam</th>
                    <th>Tanggal Kembali</th>
                    <th>Tanggal pengembalian buku</th>
                  </tr>
                  </thead>
                </table>
              </div>
              <!-- /.box-body -->
            </div>
            <!-- /.box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </section>
      <!-- /.content -->
@endsection
@push('css')
     <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endpush
@push('script')
  <script src="{{ asset('template/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
   <script src="{{ asset('template/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <script>
       $(function(){
          $('#tabel-pengembalian').DataTable({
            ajax:{
                url:'{{ route('pengembalian.list') }}',
                dataSrc:''
            },
            columns:[
                {data:'id'},
                {data:'nama'},
                {data:'judul'},
                {data:'tgl_pinjam'},
                {data:'tgl_kembali'},
                {data:'tgl_pengembalian'}
            ]
          })
       })
   </script>
   @endpush
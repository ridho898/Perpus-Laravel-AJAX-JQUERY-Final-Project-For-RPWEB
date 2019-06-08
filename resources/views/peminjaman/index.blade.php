@extends('template.master')
@section('breadcumbs')
    <h1>
        Peminjaman
    </h1>
    <ol class="breadcrumb">
        <li class="active">Data Peminjaman Buku
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
                <div class="box-tools pull-right">
                  <a id="btn-add" href="{{ route('peminjaman.create') }}" class="btn btn-success btn-sm"><i class="fa fa-sign-in"></i> Meminjam Buku</a>
                  <a id="btn-add" href="{{ route('peminjaman.cetak') }}" class="btn btn-primary btn-sm"><i class="fa fa-download"></i> Unduh (.pdf)</a>
                </div>
                
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <table id="tabel-peminjaman" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>nama</th>
                    <th>judul</th>
                    <th>Tanggal Pinjam</th>
                    <th>Tanggal Kembali</th>
                    <th>Action</th>
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
          $('#tabel-peminjaman').DataTable({
            ajax:{
                url:'{{ route('peminjaman.list') }}',
                dataSrc:''
            },
            columns:[
                {data:'id'},
                {data:'nama'},
                {data:'judul'},
                {data:'tgl_pinjam'},
                {data:'tgl_kembali'},
                {data:'perpanjang',orderable:false,searchable:false}
            ]
          })
          $('#tabel-peminjaman tbody').on( 'click', '.btn-perpanjang', function () {
            var id = $(this).attr('id')
            swal({
                title: "Apakah Anda yakin akan memperpanjang masa peminjaman buku ?",
                text: "Masa Peminjaman buku akan diperpanjang hingga 7 hari kedepan",
                icon: "warning",
                buttons: true,
                dangerMode: true,
                //new FormData($(this)[0])
                })
                .then((willDelete) => {
                if (willDelete) {
                  $.ajax({
                    type: "GET",
                    url: '{{ route("peminjaman.perpanjang") }}',
                    data: {id:id},
                    dataType:'JSON',
                    success: function(res) {
                        // tampilkan pesan dari response message
                        swal("Sukses", res.message, "success");
                        $('#tabel-peminjaman').DataTable().ajax.reload();
                    },
                    error: function(xhr) {
                        let errorText = '';
                        $.each(xhr.responseJSON.errors, function(key, value) {
                            errorText += value + '||';
                        }); 
                        swal("Gagal!", errorText, "error");
                    }
                  });
                }
            });
          });
       })
   </script>
   @endpush
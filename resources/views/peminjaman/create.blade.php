@extends('template.master')
@section('breadcumbs')
    <h1>
        Peminjaman
    </h1>
    <ol class="breadcrumb">
        <li class="active">Peminjaman Buku
        </li>
    </ol>
@endsection
@section('content')

<section class="content">
<div class="box box-default">
    <form id="form-pinjam" method="POST">
      @csrf
    <div class="box-header with-border">
      <h3 class="box-title">Form Peminjaman Buku</h3>

      <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
      </div>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label>Siswa</label>
            <select name="siswa_id" id="siswa_id" class="form-control select2" style="width: 100%;">
              <option selected="selected" value="">Silahkan Pilih Siswa</option>
            </select>
          </div>
          <!-- /.form-group -->
        </div>
        <!-- /.col -->
      </div>
      <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Buku yang akan dipinjam</h3>
                  <button type="submit" id="btn-add" class="btn btn-info btn-sm pull-right"><i class="fa fa-plus"></i> Pinjam Buku</button>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                  <table id="tabel-peminjaman" class="table table-bordered table-hover">
                    <thead>
                    <tr>
                      <th>ID</th>
                      <th>judul</th>
                      <th>Jumlah Buku</th>
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
      <!-- /.row -->
    </div>
    <!-- /.box-body -->
  </form>
  </div>
        <div class="row">
          <div class="col-xs-12">
            <div class="box">
              <div class="box-header">
                <h3 class="box-title">Data Buku</h3>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <table id="tabel-buku" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>judul</th>
                    <th>penulis</th>
                    <th>Tahun Terbit</th>
                    <th>Jumlah Buku</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    @foreach ($bukuall as $buku)
                    <tr>
                      <th>{{ $buku->id }}</th>
                      <th>{{ $buku->judul }}</th>
                      <th>{{ $buku->penulis }}</th>
                      <th>{{ $buku->tahun_terbit }}</th>
                      <th>{{ $buku->jumlah_eksemplar }}</th>
                      <th><a class="btn btn-warning btn-sm btn-pinjam" id="{{ $buku->id }}"><i class="fa fa-plus"></i></a></th>
                    </tr>
                    @endforeach
                  </tbody>
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
  <!-- Select2 -->
  <link rel="stylesheet" href="{{ asset('template/bower_components/select2/dist/css/select2.min.css') }}">
  
@endpush
@push('script')
  <script src="{{ asset('template/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
   <script src="{{ asset('template/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <!-- Select2 -->
<script src="{{ asset('template/bower_components/select2/dist/js/select2.full.min.js') }}"></script>
<script>
$(function(){

    $.ajax({
        url:'{{ route('siswa.list') }}',
        type:'GET',
        dataType:'JSON',
        success:function(data){
        $('.select2').select2({
            data:data
        })
        }
    });

    var table_buku =$('#tabel-buku').DataTable()
    var table_pinjaman = $('#tabel-peminjaman').DataTable({
        'paging'      : true,
      'lengthChange': true,
      'searching'   : true,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    });

    $('#siswa_id').on('change', function() {
        var siswa_id = $(this).val();
    });

    $('#tabel-peminjaman tbody').on( 'click', '.btn-trash', function () {
        var id = $(this).attr('id')
        var row = table_pinjaman.row($(this).parents('tr'));
        $.ajax({
            url:'/buku/'+id+'/edit',
            type:'GET',
            dataType:'JSON',
            success:function(data){
                table_buku.row.add([
                    data.id,
                    data.judul,
                    data.penulis,
                    data.tahun_terbit,
                    data.jumlah_eksemplar,
                    '<a class="btn btn-warning btn-sm btn-pinjam" id="'+data.id+'"><i class="fa fa-plus"></i></a>'
                ]).draw( false );
                table_pinjaman.row( row).remove().draw();
            }
        });
    } );
    $('#tabel-buku tbody').on('click','.btn-pinjam',function(){
        var id = $(this).attr('id')
        var row = table_buku.row($(this).parents('tr'));
        var key = table_pinjaman.data().length;
        $.ajax({
            url:'/buku/'+id+'/edit',
            type:'GET',
            dataType:'JSON',
            success:function(data){
                table_pinjaman.row.add([
                    data.id+'<input type="number" class="hidden" value="'+data.id+'" name="buku_id['+key+']" />',
                    data.judul,
                    '<input type="number" class="form-control" value="1" name="jumlah['+key+']"/>',
                    '<a class="btn btn-danger btn-sm btn-trash" id="'+data.id+'"><i class="fa fa-trash"></i></a>'
                ]).draw( false );
                table_buku.row( row).remove().draw();
            }
        });
    });

    $('#form-pinjam').on('submit',function(e) {
      e.preventDefault();
      var form = $(this);
      var siswapilihan = $('#siswa_id').val()
      var jmlbuku = table_pinjaman.data().length;
      var url = '{{ route("peminjaman.store") }}'
      if (siswapilihan) {
          if (jmlbuku > 0) {
            swal({
                title: "Apakah Anda Yakin Data yang dimasukkan telah benar ?",
                text: "data-data buku yang dipinjam akan disimpan",
                icon: "warning",
                buttons: true,
                dangerMode: true,
                //new FormData($(this)[0])
                })
                .then((willDelete) => {
                if (willDelete) {
                  $.ajax({
                    type: "POST",
                    url: url,
                    data: new FormData($(this)[0]),
                    dataType:'JSON',
                    contentType:false,
                    processData:false,
                    success: function(res) {
                      $('#siswa_id').val(' ')
                        $('.btn-trash').click()
                        table_pinjaman.clear().draw()
                        // tampilkan pesan dari response message
                        swal("Sukses", res.message, "success");
                        // $('#tabel-buku').DataTable().ajax.reload();
                        
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
          } else {
            swal('Oops.. :( ','Silahkan Pilih dahulu Buku yang akan dipinjam terlebih dahulu','warning')
          }
      }else{
        swal('Oops.. :( ','Silahkan Pilih dahulu Siswa yang akan Meminjam Buku','warning')
      }
    })
})
</script>
<script>
    
</script>
@endpush
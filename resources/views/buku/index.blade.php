@extends('template.master')
@section('breadcumbs')
    <h1>
        Buku
    </h1>
    <ol class="breadcrumb">
        <li class="active">Buku</li>
    </ol>
@endsection
@section('content')  
      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-xs-12">
            <div class="box">
              <div class="box-header">
                <h3 class="box-title">Data Buku</h3>
                <a id="btn-add" class="btn btn-info btn-sm pull-right"><i class="fa fa-plus"></i> Tambah Buku</a>
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
@include('buku._modal')
@push('css')
     <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
  <!-- Select2 -->
  <link rel="stylesheet" href="{{ asset('template/bower_components/select2/dist/css/select2.min.css') }}">
  <style>
      .select2-container--default .select2-selection--multiple .select2-selection__choice {
          background-color: #0062cc;
          border-color: #005cbf;
          color: #fff;
      }

      .select2-container .select2-selection--single {
          height: 34px;
      }
  </style>
@endpush
@push('script')
  <script src="{{ asset('template/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
   <script src="{{ asset('template/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <!-- Select2 -->
<script src="{{ asset('template/bower_components/select2/dist/js/select2.full.min.js') }}"></script>
   <script>
        $(function () {
           //Initialize Select2 Elements
          
          $('#tabel-buku').DataTable({
              ajax:{
                  url:'{{ route('buku.list') }}',
                  dataSrc:''
              },
              columns:[
                  {data:'id'},
                  {data:'judul'},
                  {data:'penulis'},
                  {data:'tahun_terbit'},
                  {data:'action',orderable:false,searchable:false}
              ]
          })
          const targetUrl = '{{ url("buku") }}';
          $('#btn-add').click(function () {
                $('#title').html('Tambah Data')
                $('.select2').val('')
                $('.select2').trigger('change')
                $('#judul').val('')
                $('#penulis').val('')
                $('#penerbit').val('')
                $('#tahun_terbit').val('')
                $('#jumlah_eksemplar').val('')
                $('#form-add-buku').attr('action', targetUrl);
                $('input[name="_method"]').prop('disabled', true);
                $('#modal-form').modal()
                
            })
            
            $.ajax({
                  url:'{{ route('kategori.list') }}',
                  type:'GET',
                  dataType:'JSON',
                  success:function(data){
                    $('.select2').select2({
                      data:data
                    })
                  }
                });

            $('#sampul').on('change', function() {
                readURL(this);
            });
            function readURL(input) {
              if (input.files && input.files[0]) {
                  var reader = new FileReader();

                  reader.onload = function (e) {
                      $('#preview-img').attr('src', e.target.result);
                  };

                  reader.readAsDataURL(input.files[0]);
              }
            }

            $("#form-add-buku").on('submit', function(e) {
                e.preventDefault();
                var form = $(this);
                var url = form.attr('action');
                $.ajax({
                    type: "POST",
                    url: url,
                    data: new FormData($("#form-add-buku")[0]),
                    dataType:'JSON',
                    contentType:false,
                    processData:false,
                    success: function(res) {
                        //sembunyikan modal
                        $('#modal-form').modal('hide');
                        
                        // tampilkan pesan dari response message
                        swal("Sukses", res.message, "success");
                        $('#tabel-buku').DataTable().ajax.reload();
                    },
                    error: function(xhr) {
                        let errorText = '';
                        $.each(xhr.responseJSON.errors, function(key, value) {
                            errorText += value + '||';
                        }); 
                        swal("Gagal!", errorText, "warning");
                    }
                });
            });
        })
    </script>
    <script>
        $('body').on('click','.btn-edit',function(){
          const targetUrl = '{{ url("buku") }}';
          var id = $(this).attr('id')
          $('#title').html('Ubah Data')
          $('.select2').val('')
          $('#judul').val('')
          $('#penulis').val('')
          $('#penerbit').val('')
          $('#tahun_terbit').val('')
          $('#jumlah_eksemplar').val('')
          $('#preview-img').attr('src', '/images/buku.png');
          $('#form-add-buku').attr('action', targetUrl+'/'+id);
          $('input[name="_method"]').prop('disabled', false);
          $('#modal-form').modal('show')
          $.ajax({
              url:'/buku/'+id+'/edit',
              type:'GET',
              dataType:'JSON',
              success:function(data){
                $('#judul').val(data.judul)
                $('#penulis').val(data.penulis)
                $('#penerbit').val(data.penerbit)
                $('#tahun_terbit').val(data.tahun_terbit)
                $('#jumlah_eksemplar').val(data.jumlah_eksemplar)
                $('#preview-img').attr('src', '/storage/'+data.sampul);
                
                var kategori=[];
                $.each(data.kategori, function(key, value) {
                  kategori.push(value.id)
                });
                $('.select2').val(kategori)
                $('.select2').trigger('change')
              }
          });
        });
    </script>
    <script>
        $('body').on('click','.btn-delete',function(){
            var url = '{{ url("buku") }}'
            var id = $(this).attr('id')
            swal({
                title: "Apakah Kamu Yakin?",
                text: "data Buku akan dihapus secara permanen",
                icon: "warning",
                buttons: true,
                dangerMode: true,
                })
                .then((willDelete) => {
                if (willDelete) {

                    $.ajax({
                        url:url+'/'+id,
                        type:'DELETE',
                        dataType:'JSON',
                        data:{_token:'{{ csrf_token() }}'},
                        success:function(data){
                          $('#tabel-buku').DataTable().ajax.reload();
                            swal("Poof! Data Buku Berhasil dihapus", {
                                icon: "success",
                            });

                        }
                    });


                    
                }
            });
        })
    </script>
@endpush
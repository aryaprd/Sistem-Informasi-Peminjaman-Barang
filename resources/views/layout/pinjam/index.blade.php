@extends('layout.main')
@section('tes')
    {{-- <style>
        .form-group12 {
            width: 700%;
            margin: 0 auto;

        }

        .iwak {
            margin-block-end:
        }

        .panel {
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: #fff;
            padding: 15px;
            margin-bottom: 20px;
        }

        .panel-body {
            padding: 15px;
        }

        .form-horizontal .form-group {
            margin-right: 0;
            margin-left: 0;
        }

        .form-horizontal .form-group:before,
        .form-horizontal .form-group:after {
            display: table;
            content: " ";
        }

        .form-horizontal .form-group:after {
            clear: both;
        }

        .form-horizontal .form-group:before,
        .form-horizontal .form-horizontal .form-group:after {
            display: table;
            content: " ";
        }

        .form-horizontal .form-group:after {
            clear: both;
        }

        .form-horizontal .form-group:before,
        .form-horizontal .form-horizontal .form-group:after {
            display: table;
            content: " ";
        }

        .form-horizontal .form-group:after {
            clear: both;
        }

        .form-horizontal .form-group:before,
        .form-horizontal .form-horizontal .form-group:after {
            display: table;
            content: " ";
        }

        .form-horizontal .form-group:after {
            clear: both;
        }

        .form-horizontal .form-group:before,
        .form-horizontal .form-horizontal .form-group:after {
            display: table;
            content: " ";
        }

        .form-horizontal .form-group:after {
            clear: both;
        }

        .dani {
            margin-right: 10px
        }

        .aya {
            margon-left: 10px;
        }



        /* .custom-file-center {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        text-align: center;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    } */

        /* select.form-select {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    border-width: 5px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                } */
    </style> --}}
    <div class="page-inner">
        <div class="page-title">
            <h3 class="breadcrumb-header">Pinjam </h3>
            <div class="page-breadcrumb">
                <ol class="breadcrumb breadcrumb-with-header">
                    {{-- <li><a href="#">Layouts</a></li>
                    <li class="active">Blank Page</li> --}}
                </ol>
            </div>
        </div>
        <br>
        <div class="col-lg-12">
            <div class="panel panel-white">
                <div class="panel-heading clearfix">
                    <h4 class="panel-title">Input Peminjaman</h4>
                </div>





                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('pinjam.store') }}"
                        enctype="multipart/form-data">
                        @csrf

                        <div class="tab-pane active fade in mt-2 me-5 " id="tab1">
                            {{-- <div class="col-md-7 me-5">
                                <div class="dani me-5 "> --}}

                            <div class="row row-sm mb-3 ms-5">
                                <div class="col-lg-6 form-group">
                                    <label for="name" class="form-label">
                                        <h4 class="no-m m-b-sm">Nama</h4>
                                    </label>

                                    <select class="form-select form-select-lg" id="user" name="user">
                                        {{-- @foreach ($user as $a) --}}
                                        <option value="{{ $userid }}" {{ $yuser }}>
                                            {{ $yuser }}
                                        </option>
                                        {{-- @endforeach --}}
                                    </select>

                                    {{-- <input type="text" value="{{ $userid }}" name=""> --}}

                                    @error('user')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror

                                </div>
                                {{-- <div class="form-group">
                                    <label for="name" class="col-sm-1 control-label">Nama</label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control @error('name') is-invalid @enderror"
                                            id="name" name="name" required autofocus value="{{ old('name') }}">
                                        @error('name')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                </div> --}}
                                {{-- <h1 class = "badge badge-warning">3</span> hai </h1> --}}
                                <div class="col-lg-6 form-group ms-5">
                                    <label for="barang" class="form-label">
                                        <h4 class="no-m m-b-sm">Barang</h4>
                                    </label>

                                    <select class="js-states form-control" tabindex="-1" tabindex="1"
                                        style="display: none; width: 100%" id="barang" name="barang" required>
                                        <option value="">Pilih barang</option>
                                        @foreach ($pinjam as $p)
                                            {{-- <select class="js-states form-control" tabindex="-1" style="display: none; width: 100%"> --}}


                                            @php
                                                $sisa = \App\Models\Barang::where('id_barang', $p->id_barang)->value(
                                                    'sisa',
                                                );
                                                $jumlah = \App\Models\Barang::where('id_barang', $p->id_barang)->value(
                                                    'jumlah',
                                                );
                                            @endphp
                                            <option value="{{ $p->id_barang }}"> {{ $p->barang }}

                                                <span class="badge badge-warning justify-content-end">[ Stock :
                                                    {{ $sisa ? $sisa : $jumlah }}]</span>
                                            </option>
                                        @endforeach

                                    </select>
                                    @error('barang')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                    <p class="help-block"></p>

                                </div>
                            </div>

                            <div class="row row-sm mb-3 ms-5">
                                <div class="col-lg-6 form-group">
                                    <label for="jumlah" class="form-label">
                                        <h4 class="no-m m-b-sm">Kuantitas</h4>
                                    </label>

                                    <input type="number" class="form-control  @error('jumlah') is-invalid @enderror"
                                        name="jumlah" id="jumlah" placeholder="Pilih Jumlah" required
                                        value="{{ old('jumlah') }}">
                                    @error('jumlah')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror

                                </div>

                                <div class="col-lg-6 form-group ms-5">
                                    <label for="kembali" class="form-label">
                                        <h4 class="no-m m-b-sm">Kembali</h4>
                                    </label>

                                    <input type="date" class="form-control" name="kembali" id="kembali"
                                        placeholder="Tanggal Kembali" required value="{{ old('kembali') }}">
                                    @error('kembali')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror

                                </div>
                            </div>


                            {{-- </div> --}}
                            {{-- <div class="form-group mb-3">
                                        <div class="custom-file">
                                            <label class="custom-file-label" for="inputGroupFile02"></label>
                                            <img class="img-preview  img-fluid mb-5 col-sm-5" id="img-preview">
                                            <br><br><br><br><br><br><br><br><br><br> <input type="file" class="form"
                                                id="image" name="image" onchange="return previewImage()">
                                            @error('image')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div> --}}

                            <div class="form-group
                                               mt-1">
                                <div class="custom-file col-sm-1 control-label me-5 ms-5">
                                    <div class="col-sm-10">
                                        <label class="custom-file-label" for="inputGroupFile02"></label>
                                        {{-- <img class="img-preview img-fluid mb-5 col-sm-1" id="img-preview"> --}}
                                        <br><br>
                                        <input type="file" class="form" id="image" name="image"
                                            onchange="previewImage()">
                                        @error('image')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            {{-- <div class="form-group">
                                        <label for="image" class="form-label">Gambar</label>
                                        <img class="img-preview img-fluid mb-3 col-sm-5" id="img-preview">
                                        <input type="file" class="form-control @error('image') is-invalid @enderror"
                                            id="image" name="image" onchange="return previewImage()">
                                        @error('image')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div> --}}

                            <div class="justify-content-beetwen ms-5 justify-content-center">
                                <div class="form-group12 me-5 mt-5">
                                    <a href="{{ route('user.index') }}" class="btn btn-info">Back</a>
                                    <button type="submit" class="btn btn-primary ms-3">Ajukan </button>
                                </div>
                            </div>
                            {{-- </div> --}}
                        </div>
                </div>
                </form>


                {{-- TABLE --}}

                <div class="panel-body mb-auto mt-5">
                    @if (count($peminjaman) > 0)
                        <div class="table-responsive mt-10">
                            {{-- <table id="example" class="table table-bordered table-sm mb-3 "> --}}
                            <table id="example" class="display table" style="width: 100%; cellpacing: 0;">
                                <thead>
                                    <tr>
                                        <th style="text-align: center;">No</th>
                                        <th style="text-align: center;">Barcode</th>
                                        <th style="text-align: center;" width="90">Barang</th>
                                        <th style="text-align: center;">Peminjam</th>
                                        {{-- <th style="text-align: center;">Pic</th> --}}

                                        <th style="text-align: center;">Jumlah

                                        </th>
                                        {{-- <th style="text-align: center;">Sisa</th> --}}
                                        <th style="text-align: center;">Tgl Pinjam</th>
                                        <th style="text-align: center;">Tgl Kembali</th>
                                        <th style="text-align: center;">Gambar</th>
                                        <th style="text-align: center;"width="20">Status</th>
                                        {{-- @foreach ($peminjaman as $p) --}}
                                        {{-- @if ($p->status == 'diterima') --}}
                                        <th style="text-align: center;"width="90">Action</th>
                                        {{-- @break
                                        @endif --}}
                                        {{-- @endforeach --}}
                                    </tr>


                                </thead>
                    @endif
                    <tbody>
                        @php
                            $count = 0;
                        @endphp

                        @foreach ($peminjaman as $p)
                            @if ($p->status != 'ditolak' && $p->status != 'selesai' && $p->status != 'telat')
                                <tr>
                                    @php
                                        $count++;
                                    @endphp
                                    <th scope="row">{{ $count }}</th>
                                    <td style="text-align: center; font-size:14 px;">{{ $p->barcode }}</td>
                                    <td style="text-align: center; font-size:14 px;">{{ $p->barang }}</td>

                                    <td style="text-align: center; font-size:14 px;">{{ $p->nama_peminjam }}</td>
                                    {{-- <td style="text-align: center; font-size:14 px;">{{ $p->nama_pic }}</td> --}}
                                    <td style="text-align: center; font-size:14 px;">{{ $p->qty_barang }}</td>
                                    {{-- <td>{{ $p->jumlah }}</td> --}}
                                    <td style="text-align: center; font-size:14 px;">
                                        {{ \Carbon\Carbon::parse($p->tgl_pinjam)->isoFormat('D MMMM YYYY HH:ss') }}
                                    </td>
                                    <td style="text-align: center; font-size:14 px;">
                                        {{ \Carbon\Carbon::parse($p->tgl_kembali)->isoFormat('D MMMM YYYY HH:ss') }}
                                    </td>
                                    {{-- <td>{{ $p->tgl_kembali }}</td> --}}
                                    <td>

                                        {{-- <img src="{!! asset('storage/' . $il->img_name) !!}" class="width-100 round"> --}}
                                        @if ($p->image != null || $p->image != '')
                                            <img src="{{ asset('storage/pinjam/' . $p->image) }}"
                                                class="rounded img-fluid img-rounded" style="height: 80px;">
                                        @endif
                                    </td>
                                    <td style="text-align: center;">
                                        @if ($p->status == 'diterima')
                                            <div class="mt-4 text-center">
                                                <button
                                                    style="background-color: rgb(73, 87, 147); color: white; padding: 5px 10px; border: none; border-radius: 5px; font-size: small; font-weight: bold; width: 75px;"
                                                    class="btn-sm">Dipinjam</button>
                                            </div>
                                        @elseif ($p->status == 'telat')
                                            <div class="mt-4 text-center">
                                                <button
                                                    style="background-color: rgb(236, 236, 25); color: white; padding: 5px 10px; border: none; border-radius: 5px; font-size: small; font-weight: bold; width: 75px;"
                                                    class="btn-sm">Terlambat</button>
                                            </div>
                                        @elseif ($p->status == 'menunggu')
                                            <div class="mt-4 text-center">
                                                <button
                                                    style="background-color: #34b0e4; color: white; padding: 5px 10px; border: none; border-radius: 5px; font-size: small; font-weight: bold; width: 75px;"
                                                    class="btn-sm">Menunggu</button>
                                            </div>
                                        @elseif ($p->status == 'ditolak')
                                            <div class="mt-4 text-center">
                                                <button
                                                    style="background-color: rgb(255, 64, 0); color: white; padding: 5px 10px; border: none; border-radius: 5px; font-size: small; width: 60px; font-weight: bold;"
                                                    class="btn-sm">Ditolak</button>
                                            </div>
                                        @elseif ($p->status == 'selesai')
                                            <div class="mt-4 text-center">
                                                <box-icon name='badge-check' size='lg' color='green'
                                                    class="mt-4"></box-icon>
                                            </div>
                                        @endif
                                    </td>

                </div>

                <td>
                    @if ($p->status == 'diterima')
                        <button type="button" class="btn btn-info btn-sm mt-4"
                            style="padding: 5px 10px; border: none; border-radius: 5px; font-size: small;"
                            data-toggle="modal" data-target="#myModal{{ $p->barcode }}">Kembalikan
                            <i class=" icon-action-undo"></i></button>
                </td>
                @endif


                <!-- Modal -->

                <div class="modal fade" id="myModal{{ $p->barcode }}" tabindex="-1" role="dialog"
                    aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h3 class="modal-title" id="myModalLabel">Ajukan pengembalian
                                </h3>



                            </div>

                            <div class="modal-body">
                                <form class="form-horizontal " method="POST"
                                    action="{{ route('pinjam.kembalikan', $p->id) }}" enctype="multipart/form-data">
                                    @csrf
                                    @method('put')

                                    <div class="panel-body">
                                        {{-- <div class="row"> --}}
                                        {{-- <div class="col-md-10"> --}}
                                        <div class="col-lg-8 form-group" style="margin-top: 6px;">
                                            {{-- <div class="control-group">
                                            <div class="controls"> --}}
                                            <label for="message" class="form-label"> <label for="jumlah"
                                                    class="form-label">
                                                    <h4 class="no-m m-b-sm">Message</h4>
                                                </label></label>
                                            <textarea class="input-large form-control" id="message" name="message" @error('message') is-invalid @enderror
                                                required rows="3" placeholder="Enter a message ..."></textarea>
                                            @error('message')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="col-lg-8 form-group" style="margin-top: 6px;">
                                            <label for="message" class="form-label"> <label for="jumlah"
                                                    class="form-label">
                                                    <h4 class="no-m m-b-sm">Jumlah Kembali</h4>
                                                </label></label>
                                            <select class="js-states form-control" tabindex="-1" tabindex="1"
                                                style="display: none; width: 100%" id="qty_barangg" name="qty_barangg"
                                                required>
                                                <option value=""></option>
                                                @php
                                                    $reqkembali = $p->qty_barang;
                                                @endphp
                                                @for ($i = 1; $i <= $reqkembali; $i++)
                                                    @if ($i == $reqkembali)
                                                        <option value="{{ $p->id }}" selected>{{ $i }}
                                                        </option>
                                                    @else
                                                        <option>{{ $i }}</option>
                                                    @endif
                                                @endfor
                                            </select>
                                        </div>

                                        {{-- @php
                                        $total_stock = (int) $b->jumlah;
                                        $qty_peminjaman = (int) \App\Models\Peminjaman::where(
                                            'id_barang',
                                            $b->id_barang,
                                        )
                                            ->where('status', 'diterima')
                                            ->sum('qty_barang');
                                        $sisa = $total_stock - $qty_peminjaman;

                                        //save
                                        $barang = \App\Models\Barang::findOrFail($b->id_barang);
                                        $barang->sisa = $sisa;
                                        $barang->save();
                                    @endphp --}}
                                        {{-- <div class="col-lg-8 form-group" style="margin-top: 6px;">
                                            <label for="date" class="form-label"> <label for="jumlah"
                                                    class="form-label">
                                                    <h4 class="no-m m-b-sm">Date</h4>
                                                </label></label>
                                            </label>

                                            <input type="date"
                                                class="form-control  @error('datee') is-invalid @enderror"
                                                id="datee" name="datee" required>
                                            @error('datee')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                @enderror
                                            </div>

                                        </div> --}}



                                        <div class="custom-file ms-5 pt-0 mt-0" style="margin-top: 6px;">
                                            <label class="custom-file-label" for="inputGroupFile02"></label>
                                            <img class="img img-fluid mt-5 mb-5" id="img-preview">
                                            {{-- <br><br><br><br><br><br><br><br><br><br> --}}
                                            <input type="file" class="mt-5" id="image_new" name="image_new"
                                                onchange="previewImage()">
                                            @error('image')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        {{-- </div> --}}

                                        {{-- </div>
                                        </div> --}}
                                        {{-- </div> --}}
                                        {{-- </div> --}}
                                    </div>
                                    <div class="modal-footer float-left">
                                        <button type="button" class="btn btn-default"
                                            data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-info">Save
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
                </td>
                </tr>
                @endforeach
                </tbody>
                </table>
            </div>
        </div>
    </div>
    </form>
    </div>
    </div>
    </div>
    </div>



    {{-- <script>
        const image = document.querySelector('#image');
        const imgPreview = document.getElementById('img-preview');

        imgPreview.style.display = 'none';

        function previewImage() {
            imgPreview.style.display = 'block';
            const oFReader = new FileReader();
            oFReader.readAsDataURL(image.files[0]);

            oFReader.onload = function(oFREvent) {
                imgPreview.src = oFREvent.target.result;
            }
        }
    </script> --}}
@endsection

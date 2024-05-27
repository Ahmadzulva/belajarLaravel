<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Kelas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }

        form input[type="text"],
        form input[type="submit"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            display: block;
        }

        form input[type="submit"] {
            background-color: #2441E7;
            color: white;
            border: none;
            cursor: pointer;

        }

        form input[type="submit"]:hover {
            background-color: #218838;
        }

        .radio-group {
            display: flex;
            flex-direction: column;
            margin: 8px 0;
        }

        .radio-group label {
            margin-bottom: 4px;
        }

        .radio-group input[type="radio"] {
            margin-right: 8px;
        }
    </style>
</head>
<body>
@session('error')
    <div class="alert alert-error">
        {{ session('error') }}
    </div>
@endsession
@if ($errors->any())
    <div class="alert alert-danger">
        <strong>Perhatian!</strong>
        <br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<h1>Form Kelas</h1>
<form action="{{ url('kelas', @$kelas->id)}}" method="POST">
    @csrf

    @if (!empty(@$kelas))
        @method('PATCH')
    @endif
    Nama Kelas : <input type="text" name="nama_kelas" value="{{ old('nama_kelas', @$kelas->nama_kelas) }}"> <br>

    Jurusan :
    <div class="radio-group">
        <label for="Rekayasa Perangkat Lunak">
            <input type="radio" name="jurusan" id="Rekayasa Perangkat Lunak" value="Rekayasa Perangkat Lunak" {{ old('jurusan', @$kelas->jurusan) == 'Rekayasa Perangkat Lunak' ? 'checked' : '' }}>RPL
        </label>
        <label for="Teknik Ketenagalistrikan">
            <input type="radio" name="jurusan" id="Teknik Ketenagalistrikan" value="Teknik Ketenagalistrikan" {{ old('jurusan', @$kelas->jurusan) == 'Teknik Ketenagalistrikan' ? 'checked' : '' }}>TKTL
        </label>
        <label for="Teknik Elektronika Audio Video">
            <input type="radio" name="jurusan" id="Teknik Elektronika Audio Video" value="Teknik Elektronika Audio Video" {{ old('jurusan', @$kelas->jurusan) == 'Teknik Elektronika Audio Video' ? 'checked' : '' }}>TEAV
        </label>
        <label for="Teknik Jaringan Komputer dan Telekomunikasi">
            <input type="radio" name="jurusan" id="Teknik Jaringan Komputer dan Telekomunikasi" value="Teknik Jaringan Komputer dan Telekomunikasi" {{ old('jurusan', @$kelas->jurusan) == 'Teknik Jaringan Komputer dan Telekomunikasi' ? 'checked' : '' }}>TJKT
        </label>
        <label for="Desain Komunikasi Visual">
            <input type="radio" name="jurusan" id="Desain Komunikasi Visual" value="Desain Komunikasi Visual" {{ old('jurusan', @$kelas->jurusan) == 'Desain Komunikasi Visual' ? 'checked' : '' }}>DKV
        </label>
    </div>

    Lokasi Ruangan : <input type="text" name="lokasi_ruangan" value="{{ old('lokasi_ruangan', @$kelas->lokasi_ruangan) }}"> <br>
    Wali Kelas : <input type="text" name="nama_wali_kelas" value="{{ old('nama_wali_kelas', @$kelas->nama_wali_kelas) }}"> <br>

<input type="submit" value="Simpan">
</form>
</body>
</html>

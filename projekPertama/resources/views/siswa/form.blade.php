<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
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
<h1>Form Siswa</h1>
<form action="{{ url('siswa', @$siswa->id)}}" method="POST">

    @csrf
    @if (!empty(@$siswa))
        @method('PATCH')
    @endif

    NIS : <input type="text" name="nis" value="{{old('nis' , @$siswa->nis)}}"><br>
    Nama Lengkap : <input type="text" name="nama_lengkap" value="{{old('nama_lengkap', @$siswa->nama_lengkap)}}"><br>
    Jenis Kelamin :
    <label for="L">
    <input type="radio" name="jk" id="L" value="L" {{ old('jk', @$siswa->jk) == 'L' ? 'checked' : '' }}> Laki-laki
</label>
<label for="P">
    <input type="radio" name="jk" id="P" value="P" {{ old('jk', @$siswa->jk) == 'P' ? 'checked' : '' }}> Perempuan
</label>
<br>
Golongan Darah :
<select name="golongan_darah">
    <option value="">Pilih Golongan Darah</option>
    <option value="A" {{ old('golongan_darah', @$siswa->golongan_darah) == 'A' ? 'selected' : '' }}>A</option>
    <option value="B" {{ old('golongan_darah', @$siswa->golongan_darah) == 'B' ? 'selected' : '' }}>B</option>
    <option value="AB" {{ old('golongan_darah', @$siswa->golongan_darah) == 'AB' ? 'selected' : '' }}>AB</option>
    <option value="O" {{ old('golongan_darah', @$siswa->golongan_darah) == 'O' ? 'selected' : '' }}>O</option>
</select>
<br>

    <input type="submit" value="Simpan">
</form>
</body>
</html>

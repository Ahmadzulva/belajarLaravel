<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kelas</title>
    <style>
                body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .alert {
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
        }

        .alert-success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }

        .alert-error {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #343a40;
            color: #fff;
        }

        td:last-child {
            text-align: center;
        }

        .btn {
            display: inline-block;
            padding: 8px 16px;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    @session('success')
    <div class="alert alert-success">
        {{ session('success')}}
    </div>
@endsession

@session('success')
    <div class="alert alert-error">
        {{ session('error')}}
    </div>
@endsession
    <a href="{{ url('/kelas/create')}}">Tambah Data</a>
    <table border="1">
        <tr>
            <td>No</td>
            <td>Nama Kelas</td>
            <td>Jurusan</td>
            <td>Lokasi Ruangan</td>
            <td>Wali Kelas</td>
            <td colspan="2" style="text-align: center;">Aksi</td>
        </tr>
        @foreach ($kelas as $row)
        <tr>
            <td>{{ isset($i) ? ++$i : $i = 1 }}</td>
            <td>{{ $row->nama_kelas}}</td>
            <td>{{ $row->jurusan}}</td>
            <td>{{ $row->lokasi_ruangan}}</td>
            <td>{{ $row->nama_wali_kelas}}</td>
            <td><button><a href="{{ url('/kelas/edit/' . $row->id)}}">Edit</a></button></td>
            <td>
                <form action="{{ url('/kelas', $row->id)}}" method="POST">
                    @method('DELETE')
                    @csrf
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </table>

</body>
</html>


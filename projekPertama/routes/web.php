<?php

use App\Http\Controllers\SiswaController;
use App\Http\Controllers\KelasController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/siswa', [SiswaController::class, 'index0']);
Route::get('/siswa/create', [SiswaController::class, 'create']);
Route::post('/siswa', [SiswaController::class, 'store']);
Route::get('/siswa/edit/{id}', [SiswaController::class, 'edit']);
Route::patch('/siswa/{id}', [SiswaController::class, 'update']);
Route::delete('/siswa/{id}', [SiswaController::class, 'destroy']);
Route::get('/belajar', [SiswaController::class , 'index0']);

Route::get('/kelas', [KelasController::class, 'index']);
Route::get('/kelas/create', [KelasController::class, 'create']);
Route::post('/kelas', [KelasController::class, 'store']);
Route::get('/kelas/edit/{id}', [KelasController::class , 'edit']);
Route::patch('/kelas/{id}', [KelasController::class , 'update']);
Route::delete('/kelas/{id}', [KelasController::class , 'destroy']);
Route::get('/kelas', [KelasController::class , 'index']);

// Route tipe get (cara1)
// Route::get('/kesatu', function(){
//     echo'Ini yang pertama';
// });

// Route::get('/kedua', function(){
//     echo'Ini yang kedua';
// });

// Route::get('/ketiga', function(){
//     echo'Ini yang ketiga';
// });

// Route memanggil dari views(cara2)

// Route::get('/ke1', function(){
//     $data['nama'] = "nabil";
//     $data['jk'] = "laki-laki";
//     return view('ke1', $data);
// });

// Route::get('/ke2', function(){
//     $nama ="nabil";
//     $umur = "16";
//     return view('ke2', compact('nama','umur'));
// });

// Route::get('/ke3', function(){
//     $data['nama'] = "nabil";
//     $data['umur'] = "16";
//     return view('ke3', $data);
// });

// Menggunakan Controller

Route::get('/ke1', [SiswaController::class , 'index1']);
Route::get('/ke2', [SiswaController::class , 'index2']);
Route::get('/ke3', [SiswaController::class , 'index3']);
Route::get('/kelas', [KelasController::class , 'index']);

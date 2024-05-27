<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('t_percobaan', function (Blueprint $table) {
            $table->id();
            $table->integer('nik'); // Integer tanpa panjang
            $table->string('nama_lengkap', 100);
            $table->tinyInteger('tanggal_lahir'); // Menggunakan tinyInteger untuk tanggal lahir
            $table->tinyInteger('bulan_lahir'); // Menggunakan tinyInteger untuk bulan lahir
            $table->smallInteger('tahun_lahir'); // Menggunakan smallInteger untuk tahun lahir
            $table->string('jenis_kelamin', 1);
            $table->string('asal_kota', 100);
            $table->string('kewarganegaraan', 3);
            $table->string('alamat', 100);
            $table->string('no_telepon', 15);
            $table->string('email', 100);
            $table->string('pekerjaan', 50);
            $table->string('pendidikan_terakhir', 50);
            $table->string('status_perkawinan', 10);
            $table->timestamps();

            // Menambahkan indeks jika diperlukan
            $table->unique('nik'); // Jika NIK harus unik
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('t_percobaan');
    }
};


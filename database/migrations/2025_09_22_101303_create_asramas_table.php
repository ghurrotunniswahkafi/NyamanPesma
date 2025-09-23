<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('asramas', function (Blueprint $table) {
            $table->string('id_asrama')->primary(); // id_asrama jadi PK
            $table->string('nama_asrama');
            $table->integer('kapasitas');
            $table->enum('status', ['tersedia', 'penuh', 'maintenance']);
            $table->decimal('harga_bulanan', 12, 2);
            $table->decimal('harga_tahunan', 12, 2);
            $table->string('foto')->nullable();
            $table->text('deskripsi')->nullable();
            $table->json('fasilitas')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('asramas');
    }
};

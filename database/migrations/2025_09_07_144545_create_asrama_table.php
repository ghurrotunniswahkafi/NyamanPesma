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
        Schema::create('asrama', function (Blueprint $table) {
            $table->id('id_asrama');
            $table->string('nama_asrama'); // contoh: Asrama Perempuan 1, Asrama Laki-laki 1
            $table->integer('kapasitas')->default(3);
            $table->enum('status', ['tersedia', 'penuh', 'maintenance'])->default('tersedia');
            $table->decimal('harga_bulanan', 12, 2)->default(685000);
            $table->decimal('harga_tahunan', 12, 2)->default(1655000);
            $table->string('foto')->nullable(); // path foto
            $table->text('deskripsi')->nullable();
            $table->json('fasilitas')->nullable(); // ["kasur","bantal","ember","kipas","lemari","kamar mandi"]
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('asrama');
    }
};

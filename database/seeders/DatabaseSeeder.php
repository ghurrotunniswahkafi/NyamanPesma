<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        // === Seeder Asrama ===
        $fasilitas = json_encode(["Kasur", "Bantal", "Ember", "Kipas", "Lemari", "Kamar Mandi"]);

        // 48 Asrama Perempuan
        for ($i = 1; $i <= 48; $i++) {
            DB::table('asrama')->insert([
                'nama_asrama' => "Asrama Perempuan $i",
                'kapasitas' => 3,
                'status' => 'tersedia',
                'harga_bulanan' => 685000,
                'harga_tahunan' => 1655000,
                'foto' => null,
                'deskripsi' => "Asrama khusus perempuan nomor $i.",
                'fasilitas' => $fasilitas,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // 48 Asrama Laki-laki
        for ($i = 1; $i <= 48; $i++) {
            DB::table('asrama')->insert([
                'nama_asrama' => "Asrama Laki-laki $i",
                'kapasitas' => 3,
                'status' => 'tersedia',
                'harga_bulanan' => 685000,
                'harga_tahunan' => 1655000,
                'foto' => null,
                'deskripsi' => "Asrama khusus laki-laki nomor $i.",
                'fasilitas' => $fasilitas,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // === Seeder Users ===
        // Admin
        DB::table('users')->insert([
            'nama' => 'Admin Utama',
            'email' => 'admin@example.com',
            'username' => 'admin',
            'password' => Hash::make('password'), // default password
            'role' => 'admin',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // 19 User biasa
        for ($i = 1; $i <= 19; $i++) {
            DB::table('users')->insert([
                'nama' => "User $i",
                'email' => "user$i@example.com",
                'username' => "user$i",
                'password' => Hash::make('password'),
                'role' => 'user',
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}

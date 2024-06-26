<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // User::factory(30)->create();

        User::create([
            'name' => 'admin',
            'email' => 'admin@id',
            'password' => bcrypt('admin'),
            'nik_pic' => '12345678',
            'group_id' => 1
        ]);

        User::factory(99)->create();
    }
}

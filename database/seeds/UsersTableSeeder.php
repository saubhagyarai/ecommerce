<?php

use App\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'admin',
            'email' => 'admin@admin.com',
            'password' => bcrypt('password')
        ]);

        User::create([
            'name' => 'john doe',
            'email' => 'johndoe@gmail.com',
            'password' => bcrypt('johndoe@gmail.com')
        ]);
    }
}

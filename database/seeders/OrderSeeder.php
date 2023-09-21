<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i = 0; $i < 10; $i++){
            DB::table('order')->insert([
                'product' => Str::random(10),
                'price' => rand(100, 100000),
                'adress_delivery' => Str::random(100),
            ]);
        }
        
    }
}

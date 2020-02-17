<?php

use App\Product;
use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Product::class, 30)->create();


        // $p1 = [
        //     'name' => 'Learn to build websites in HTML5',
        //     'image' => 'products/a.jpeg',
        //     'price' => 5000,
        //     'description' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry\. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. I'
        // ];

        // $p2 = [
        //     'name' => 'PHP development',
        //     'image' => 'products/b.jpeg',
        //     'price' => 5000,
        //     'description' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry\. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. I'
        // ];

        // Product::create($p1);
        // Product::create($p2);

    }
}

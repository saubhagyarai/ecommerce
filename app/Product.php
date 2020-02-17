<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class Product extends Model
{
    protected $fillable = [
        'name', 'price', 'image', 'description'
    ];

    /**
     * Delete image from storage
     * return void
     */

    public function deleteImage()
    {
        Storage::delete($this->image);
    }
}

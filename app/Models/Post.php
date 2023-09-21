<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $fillable = ['id', 'text'];

    protected $table = 'posts';


    public function author()
    {
        return $this->belongsTo(Author::class, 'author_id');
    }

    public function categories()
    {
        return $this->hasMany(PostCategory::class);
    }

}

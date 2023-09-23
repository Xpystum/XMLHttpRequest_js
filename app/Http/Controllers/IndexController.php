<?php

namespace App\Http\Controllers;

use App\Http\Resources\PostCollection;
use App\Http\Resources\PostResource;
use App\Jobs\Test;
use App\Models\Author;
use App\Models\Post;
use App\Models\User;
use App\Validators\PostValidator;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class IndexController extends Controller
{
    protected $layout = "default";

    public function posts(){
        // $post = Post::firstWhere('id', 2022);
        // $post->title = "Проверка";
        // $post->text = "Проверка2";
        // $post->save();
        // dd($post);
        return Post::get();
    }

    public function post_delete(Request $request){
        return $request->all();
        if($request->id != null){
            // Post::where('id', $request->id)->delete();
            // return Post::get();
        }
    }

    public function post_update(Request $request){

        if($request->id != null){
            $post = Post::firstWhere('id', $request->id);
            
            if(!empty($request->content)){
                $post->text = $request->content;
            } 
            if(!empty($request->title)){
                $post->title = $request->title;
            }
            if(!empty($request->title) || !empty($request->content)){
                $post->save();
            }
            $post->save();
            return Post::get();
        }
        else{
            return response('Поста не существует', 416)
            ->header('Content-Type', 'text/plain');
        }
    }

    
}

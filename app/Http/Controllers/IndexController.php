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


    public function index(Request $request)
    {
        // создать формочку на страничке контакты из двух полей 1 email и имя
        // создать новый роут и action для приёма данных с формы "obr"
        // создать 2 middleware первый проверяет наличие email, а второй - имя
        // роут "obr" проходит до вида только в том случае, если оба middleware истинные

        $layout = "main";

        $posts = Post::get();
        //dd($posts[1]->categories[0]->categories);
       
        $user = null;
        if (Auth::check()) {
            $user = Auth::user();
        }

        

        $data = [];
        return view('pages.index', compact('layout', 'data', 'posts', 'user'));

        // создать новую таблицу пол, сделать связь и вывести рядом с авторами
    }

    public function loadfile(Request $request){
        $request->file('myfile')->store('public/avatars');
        $path = Storage::putFile('storage/avatars', $request->file('myfile'));
        return view('pages.load', compact('path'));
    }



    public function authorisation(Request $request){
        

        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
        }
        else{
            dd("не вошел");
        }

        return Redirect::to('/');

    }

    public function logout(){
        Auth::logout();

        return Redirect::to('/');
    }

    public function contacts()
    {
        if(true){
            Log::build([
                'driver' => 'single',
                'path' => storage_path('logs/errors.log'),
              ])->error("Ваня опять облажался");
        }
        return view('pages.ivan');
    }

    public function obr()
    {
        dd("obr");
    }

    public function about()
    {
        dd(1);
        //return view('pages.ivan');
    }

    public function categories()
    {

        return view('pages.ivan');
    }

    public function category()
    {

        return view('pages.ivan');
    }

    public function test(){
        $users = User::get();
        return $users;
    }

    public function jobs(){
        //return Redirect::to('/');
        dd(Post::where("id",2018)->first());
        //Test::dispatch("Ваня косепор");

    
        // создать еще одну очередь и вызвать обе очереди внутри одного контроллера
        
    }

    public function res(){

        return  new PostResource(Post::where("id",2018)->first());
    }

    public function collection(){
        
        return new PostCollection(Post::all());
    }

    public function test_request(Request $request){
        $post = Post::where("id", $request->id)->first();

        return $post;
    }

    public function posts(){
        return Post::get();
    }

    public function post_delete(Request $request){
        if($request->id != null){
            Post::where('id', $request->id)->delete();
            return Post::get();
        }
    }

    
}

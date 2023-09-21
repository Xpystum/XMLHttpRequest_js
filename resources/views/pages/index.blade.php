
@extends("layouts.{$layout}")


@section('content')

    @if($user)
        <a href="/logout">выйти</a>
    @endif

    <p>welcome</p>

    <form method="POST" action="/authorisation">
        @csrf
        <input name="email" type="email" placeholder="email">
        <input name="password" type="password" placeholder="password">
        <button>Войти</button>
    </form>

    <form method="POST" action="/loadfile" enctype="multipart/form-data">
        @csrf
        <input name="myfile" type="file">
        <button>Войти</button>
    </form>




    @foreach($posts as $post)
        <h2>{{ $post->title }}</h2>
        <p>{{ $post->text }}</p>
        <span>{{ $post->author->name }}</span>
    @endforeach

    
   

@endsection
@extends("layouts.{$layout}")

@section('content')
    <h1>посты</h1>



    @if(Session::has('error'))
        <p>{{ Session::get('error') }}</p>
    @endif

    @if(Session::has('success'))
        <p>{{ Session::get('success') }}</p>
    @endif



    <form action="/obr" method="POST">
        @csrf
        <input type="text" name="field">
        <button>отправить</button>

    </form>

@endsection

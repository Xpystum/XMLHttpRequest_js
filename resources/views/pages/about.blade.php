@extends("layouts.{$layout}")

@section('content')
    <p>about</p>
	@if($flag)
		{{ $x }}
	@else

	@endif


	@php
	    $isActive = false;
	    $hasError = true;
	@endphp

	<span @class([
	    'p-4',
	    'font-bold' => $isActive,
	    'text-gray-500' => ! $isActive,
	    'bg-red' => $hasError,
	])>123213213213213</span>


	<p @if(true)
		class = "active"
	@endif
	>qweqwe</p>


	<ul>
		@foreach($mass as $el)
			<li>{{ $el }}</li>
		@endforeach
	</ul>
@endsection

@extends('layouts.master')

@section('title', 'Избранные новости')

@section('content')

<div class="relative flex items-top justify-center min-h-screen bg-gray-100 dark:bg-gray-900 sm:items-center py-4 sm:pt-0">
    @if (Route::has('login'))
        <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
            @auth
                <a href="{{ url('/dashboard') }}" class="text-sm text-gray-700 underline">Dashboard</a>
            @else
                <a href="{{ route('login') }}" class="text-sm text-gray-700 underline">Log in</a>

                @if (Route::has('register'))
                    <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 underline">Register</a>
                @endif
            @endauth
        </div>
    @endif

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <form method="GET" action="{{ route('search') }}">
                <div class="form-row">
                    <div class="form-group col-md-10">
                        <input type="text" class="form-control" id="query__" name="query__" placeholder="Search...">
                    </div>
                    <div class="form-group col-md-2">
                        <button type="submit" class="btn btn-primary btn-block">Search</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

{{-- Передаем на эту страницу массив news favorit--}}
    @foreach($news as $new)
        @include('layouts.new', compact('new'))
    @endforeach

</div>
        @endsection
</body>
</html>

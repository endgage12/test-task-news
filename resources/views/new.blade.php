@extends('layouts.master')

@section('title', $news->title)

@section('content')

<div class="col-sm-12 col-md-12">
    <div class="thumbnail">
        <div class="caption">
            <h3> {{ $news->title }} </h3>
            <p><img src="/img/{{ $news->image }}" alt="" class="img-responsive"></p>
            <p>{{ 'Content:' . $news->content }}</p>
            <p>{{ 'Description:' . $news->description }}</p>
            <p>{{ 'Author:' . $news->author }}</p>
            <p>{{ 'Tag:' . $news->tag }}</p>
        </div>

        @auth
        <form action="{{ url('addInFavorit/'.$news->id) }}" method="POST">
            @csrf
            <input type="submit" value="Добавить в избранное" class="btn btn-primary">
        </form>
        @endauth
    </div>
</div>

@endsection

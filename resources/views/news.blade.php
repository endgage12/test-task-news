@extends('layouts.master')
@section('title', 'Новости')
@section('content')

{{-- Передаем на эту страницу массив news --}}
    @foreach($news as $new)
        @include('layouts.new', compact('new'))
    @endforeach
@endsection


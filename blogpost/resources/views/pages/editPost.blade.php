<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
@extends('layouts.app')
@section('content')
    <div class="container mt-4">
    <h2> Edit Post </h2>
    <form action="{{route('posts.update',$post->id)}}" method='POST'>
    @csrf
    @method('PATCH')
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <div class="form-group">
        <label ><b>Post Title</b></label>
    <input type="text" value="{{$post->title}}" name="title" class="form-control"  placeholder="Title" required>
    </div>
    <div class="form-group">
        <label ><b>Post Description</b></label>
    <textarea class="form-control" name="body" cols="10" rows="5" required>{{$post->body}}</textarea>
    </div>

    <div class="form-group">
        <label ><b>Role</b></label>
        <select name="user_id" class="form-control" required>
            <option value="1">Admin</option>
          </select>
    </div>

    <div class="form-group">
        <label ><b>Post Tags</b></label> <br>
    @foreach ($tag as $value)
        <input type="checkbox" name="name[]" value="{{$value->id}}"> {{$value->name}}
    @endforeach
    </div>

        <button type="submit" class="btn btn-primary">Edit Post</button>
        <button type="submit" class="btn btn-danger">Cancel</button>
    </form>
</div>
@endsection
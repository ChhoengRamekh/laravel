 <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tokenfield/0.12.0/bootstrap-tokenfield.js"></script>
@extends('layouts.app')
@section('content')
<div class="container">
    <h2> Create New Post </h2>
    <form action="{{route('posts.store')}}" method='POST'>
    @csrf

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
        <input type="text" name="title" class="form-control"  placeholder="Title" required>
    </div>
    <div class="form-group">
        <label ><b>Post Description</b></label>
        <textarea class="form-control" name="body" cols="10" rows="5" required placeholder="Description"></textarea>
    </div>

    <div class="form-group">
        <label ><b>Role</b></label>
        <input type="text" name="user_id" class="form-control"  placeholder="User ID" required>
    </div>

    <div class="form-group">
        <label ><b>Post Tags</b></label>
        <input type="text" class="form-control" id="tokenfield" value="red,green,blue" />
        <input type="text" name="skill" id="skill" class="form-control" />
    </div>
    

        <button type="submit" class="btn btn-primary">Create Post</button>
        <button class="btn btn-danger">Cancel</button>
    </form>
</div>
@endsection
<script>
    $(document).ready(function(){
         $('#skill').tokenfield({
  autocomplete:{
   source: ['PHP','Codeigniter','HTML','JQuery','Javascript','CSS','Laravel','CakePHP','Symfony','Yii 2','Phalcon','Zend','Slim','FuelPHP','PHPixie','Mysql'],
   delay:100
  },
  showAutocompleteOnFocus: true
 });
    });
</script>
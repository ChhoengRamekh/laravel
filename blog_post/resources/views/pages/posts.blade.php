<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
@extends('layouts.app')
@section('content')
    <div class="container">
    @if(Auth::check())
    <a href="{{route('posts.create')}}"><button type="button" class="btn btn-primary text-white">Add New Post</button></a>
    @endif
    @if (session('error'))
        <div class="alert alert-danger" role="alert">
          {{session('error')}}
        </div> 
    @endif

    @foreach ($post as $value)
      <div class="card mt-4">
      <div class="card-body">
        <h3>{{$value['title']}}</h3>
        <p>{{$value['body']}}</p>
        <p class="text-success"> By: {{$value->user->name}}</p>
        <p class="label label-primary"></p>

        @Auth
          @if (Auth::user()->id==$value->user_id)
              
            <a href="{{route('posts.edit',$value->id)}}"><i class="material-icons text-success">create</i></a>
            <a href="#deleteModal" data-toggle="modal" data-title="{{$value->title}}" data-id="{{$value->id}}" data-target="#deleteModal"><i class="material-icons text-danger">delete</i></a>
          @endif
            @endauth
      </div>
    </div>
      @endforeach
      @endsection   
        



    <div class="modal" id="deleteModal" tabindex="-1" role="dialog" >
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Modal title</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p>Are you sure to delete?</p>
              <small id="mPostTitle"></small>
            </div>
            <div class="modal-footer">
            <form id="mDelete" action="" method="POST">
                @method('delete')
                @csrf
              <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Delete</button>
            </div>
            </form>
            </div>
          </div>
        </div>
      </div>
</div> 

<script src="{{asset('js/app.js')}}"></script>
<script>
  $('#deleteModal').on('show.bs.modal',function(event){
    var button = $(event.relatedTarget)
    var postTitle = button.data('title')
    var id = button.data('id')
    var modal= $(this)
    modal.find('#mPostTitle').text(postTitle)
    var url ="{{url('delete')}}/"+id;
    $('#mDelete').attr('action',url);
  })
</script>

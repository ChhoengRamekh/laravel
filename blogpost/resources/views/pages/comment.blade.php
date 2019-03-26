<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<div class="container mt-4">
    <div class="card">
        <div class="card-body">
                <a href="{{route('comment.create')}}"><button type="button" class="btn btn-info">Add</button></a>
            <form action="">
               @foreach ($comment as $key=> $item)              
               <div class="form-group">
               <textarea  class="form-control"  id="" cols="30" rows="5">{{$item['text']}}</textarea>
               <small>{{$item->created_at->diffForHumans()}}</small>
               <a href="{{route('comment.edit',$item->id)}}"><i class="material-icons text-success">create</i></a>
            <a href="#deleteModal" data-toggle="modal" data-text="{{$item->text}}" data-id="{{$item->id}}" data-target="#deleteModal"><i class="material-icons text-danger">delete</i></a>
               </div>
               @endforeach
            </form>
        </div>
    </div>
</div> 



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
          <small id="text"></small>
        </div>
        <div class="modal-footer">
        <form id="Delete" action="" method="post">
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
<script src="{{asset('js/app.js')}}"></script>
<script>
    $('#deleteModal').on('show.bs.modal',function(event){
        var button =$(event.relatedTarget)
        var commentText= button.data('text')
        var commentId= button.data('id')
        var modal =$(this)
        modal.find('#text').text(commentText)
        var url ="{{url('comment')}}/"+commentId;
        $('#Delete').attr('action',url)
    })
</script>
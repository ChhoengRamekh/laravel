<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<div class="container">
    <div class="card">
        <div class="card-header">Add Comment</div>
        <div class="card-body">
        <form action="{{route('comment.store')}}" method="post">
            @csrf 
                <div class="form-group">
                    <textarea name="comment" cols="100" rows="5"></textarea>
                </div>
                <div class="form-group">
                    <a href="#"><button type="submit" class="btn btn-primary">Create</button></a>
                </div>
            </form>
        </div>
    </div>
</div>
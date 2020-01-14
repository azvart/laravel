@extends('layouts.base')
@section('scripts')
 @parent
 <script src="{{asset('ckeditor/ckeditor.js')}}"></script>
 <script >
   CKEDITOR.replace('body');
 </script>
@endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">









                 <form class="needs-validation" method='POST' action="{{asset('home')}} " enctype="multipart/form-data">
                    {!!csrf_field()!!}

    <div class="form-group">
      <label for="name"> Name</label>
      <input type="text" class="form-control" name='name' id="name" placeholder="Name"  >
      @error('name')
                                    <span class="alert alert-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
    </div>
     <div class="form-group">
      <label for="price">Price</label>
      <input type="text" class="form-control" id="price" placeholder="Price" name='price' >
      @error('price')
                                    <span class="alert alert-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
    </div>


     <div class="form-group">
      <label for="body">Description</label>
      <textarea type="text" class="form-control" id="body" placeholder="Description" name='body' ></textarea>
      @error('body')
                                    <span class="alert alert-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
    </div>

       <div class="form-group">
      <label for="small_body">Short Description</label>
      <input type="text" class="form-control" id="small_body" placeholder="Short Description" name='small_body' >
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>

<div class='form-group'>
     <div class="custom-control custom-checkbox">
  <input type="checkbox" class="custom-control-input" id="showhide" name='showhide'>
  <label class="custom-control-label" for="showhide">Check this custom checkbox</label>
</div>
</div>
  
  <div class="form-group">
    <select class="custom-select"name='category_id' id='category_id' >
      <option value="">Open this select menu</option>
      @foreach($cats as $one)
      <option value="{{$one->id}}">{{$one->name}}</option>
      @endforeach
    </select>
    <div class="invalid-feedback">Example invalid custom select feedback</div>
  </div>

   <div class="custom-file">
    <input type="file" class="custom-file-input" id="picture1" name='picture1'>
    <label class="custom-file-label" for="picture1">Choose file...</label>
    <div class="invalid-feedback">Example invalid custom file feedback</div>
  </div>
  <br>
  <button class="btn btn-primary" type="submit">Submit form</button>
</form>





                </div>
   







            </div>

     

<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Изображение</th>
      <th scope="col">Наименование</th>
      <th scope="col">Описание</th>
      <th scope="col">Цена</th>
      <th scope='col'>Категория</th>
    </tr>
  </thead>
  <tbody>
    @foreach($products as $des)
    <tr>
      
      <td>
@if($des->picture)
        <img src="{{asset('uploads/'.$des->user_id.'/'.$des->picture)}}" class="card-img-top" alt="...">
@endif
      </td>
       <td>{{$des->name}}</td>
       <td>{{$des->small_body}}</td>
       <td>{{$des->price}}</td>
       <td>{{(isset($des->catalogs->name))?$des->catalogs->name:''}}</td>
    </tr>

    @endforeach
  </tbody>
</table>






                {!!$products->links()!!}
        </div>
    </div>
</div>
@endsection

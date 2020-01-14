@extends('layouts.base')
@section('styles')
@parent

@endsection
@section('content')


    <div class="row">
    @foreach($products as $prod)
        <div class="col-sm-5 mx-1 my-1 ">
        	
            <div class="card border-0">
                <div class="card-header border-bottom ">
                	<h2 class='card-text text-dark text-center '>{{$prod->name}}</h2>
                </div>
                 
                <div class="card-body text-center">
                	<img src="{{asset('/uploads'.'/'.$prod->user_id.'/s_'.$prod->picture)}}" alt="" />
                	<h2 class='card-title'>{{$prod->small_body}}</h2>
                   <p class='card-text'>{{$prod->price}}</p>
                   <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal{{$prod->id}}">
  Посмотреть
</button>
<div class="modal fade" id="exampleModal{{$prod->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{{$prod->name}}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="col-md-12">
        	 
            <div class="card">
                
                 
                <div class="card-body text-center">
                	<img src="{{asset('/uploads'.'/'.$prod->user_id.'/'.$prod->picture)}}" alt="" class='card-img-top' />
                	
                   <p class='card-title'>{!!$prod->body!!}</p>
                   <p class='card-text'>{{$prod->price}}</p>
                   

                </div>
          
            </div> 
        </div>
      </div>
      
    </div>
  </div>
</div>


                </div>
          
            </div>
            
        </div>
        @endforeach
    </div>


 



@endsection

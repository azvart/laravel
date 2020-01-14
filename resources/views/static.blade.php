@extends('layouts.base')

@section('content')
<div class='cont'>
	<div class='col-md-12'>
		<div class='row justify-content-center'>
			 <h2>{{isset ($obj->name) ? $obj->name:'404'}}</h2>
		</div>
	
     <div>{!! isset ($obj->body) ? $obj->body:'404'!!}</div>		
	</div>
</div>

@endsection
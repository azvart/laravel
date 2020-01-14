<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;

class CategoryController extends Controller
{
       public function getIndex($id=null){
    	$obj = Category::find($id); 
    	$products = Product::where('category_id',$id)->get();
    	return view('category',compact('obj','products'));
    }
}

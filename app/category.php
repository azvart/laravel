<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    public function products(){
        return $this->hasMany('App/Product','category_id'); //делаем связь категорий и продуктов
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    /**
     * 获取最热文章
     * @param $query
     * @return mixed
     */
    public function scopeHot($query)
    {
        return $query->orderBy('click','desc')->limit(8)->get();
    }

    public function scopeNext($query){

    }

    /**
     * 查找所有标签
     * @param $query
     * @return array
     */
    public function scopeSignAll($query){
        $all=$query->select('id','sign')->get();
        $signAll=[];
        foreach ($all as $vo){
            $signs=explode(' ',$vo['sign']);
            foreach ($signs as $sign){
                if(array_key_exists($sign,$signAll)){
                    $signAll[$sign]++;
                }else{
                    $signAll[$sign]=1;
                }
            }
        }
        return $signAll;
    }
}

<?php
/**
 * Created by PhpStorm.
 * User: xiaoxingping
 * Date: 2016/5/12
 * Time: 18:00
 */
namespace App\Http\Controllers;
use App\User;
use App\Http\Controllers\Controller;

class UserController extends Controller
{
    /**
     * 显示指定用户的个人数据。
     *
     * @param  int  $id
     * @return Response
     */
    public function showProfile($id)
    {
        //return '用户ID:'.$id;
        return User::find_name($id);
    }
}

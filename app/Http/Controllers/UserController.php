<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class UserController extends Controller
{
   

    //* show view đăng nhập
    public function getLogin() {
        return view('admin.login');
    }

    //* xử lý đăng nhập
    public function postLogin(Request $request)
    {
        $request->validate([
            'username'=>'required',
            'password'=>'required',
        ], [
            'username.required'=>'Chưa nhập tài khoản',
            'password.required'=>'Chưa nhập password',

        ]);

        //* check username và mật khẩu
        if (Auth::attempt(['email'=>$request->username,'password'=>$request->password]) || Auth::attempt(['username'=>$request['username'], 'password' => $request['password']]))
        {
            return redirect('admin/user/list');
        }
        else
        {
            return redirect('admin/login')->with('thongbao','đăng nhập không thành công');
        }
    }

    //* xử lý đăng xuất
    public function getdangxuatadmin() {
        Auth::logout();
        return redirect('admin/login');
    }

   
}

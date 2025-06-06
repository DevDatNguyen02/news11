<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Comment;
use App\Models\News;

class CommentController extends Controller
{
    //* xử lý xóa comment
    public function delete($id, $news_id) {
        Comment::destroy($id);
        return redirect('admin/news/edit/'.$news_id)->with('thongbao','Xóa bình luận thành công');
    }

    //* xử lý tạo comment
    public function comment($id,Request $request) {
        $news = News::find($id);
        $request->validate([
           'content' => 'required'
        ]);

        $request['user_id'] = Auth::user()['id'];
        $request['news_id'] = $id;

        Comment::create($request->all());
        return redirect('news/'.$id.'_'.$news['sort_title'].'.html')->with('thongbao','Update thành công');
    }
    
    //* bật active
    public function active($id, $news_id) {
        Comment::find($id)->update(['active' => 1]);
        if(request()->ajax()) {
            return response()->json(['success' => true]);
        }
        return redirect('admin/news/edit/'.$news_id)->with('thongbao','Cập nhật trạng thái thành công');
    }

    //* tắt active
    public function block($id, $news_id) {
        Comment::find($id)->update(['active' => 0]);
        if(request()->ajax()) {
            return response()->json(['success' => true]);
        }
        return redirect('admin/news/edit/'.$news_id)->with('thongbao','Cập nhật trạng thái thành công');
    }
}

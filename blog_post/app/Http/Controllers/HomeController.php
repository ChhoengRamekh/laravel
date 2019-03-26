<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\SendMail;
use Mail;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function sendEmail(){
        $data = array(
            'name'=>'ChhoengRamekh',
            'email'=>'ramekh.chhoeng@student.passerellesnumeriques.org',
        ); 
 
        Mail::to('ramekh.chhoeng@student.passerellesnumeriques.org')->send(new SendMail($data));
        return "Your email has been sent";
     }

     public function uploadFile() {
        return view('uploadFile');
     }

     public function uploadFilePost(Request $request){
        if($request->hasFile('fileToUpload')){
            $fileName = $request->file('fileToUpload')->getClientOriginalName();
            $request->file('fileToUpload')->storeAs('images',$fileName);
        }
        return back()
            ->with('success','You have successfully upload image.');

    }
    
}

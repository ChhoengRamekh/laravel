<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class pagesController extends Controller
{
    public function about(){
        return view('page.about');
    }
    public function service(){
        $data=array(
            '0'=>array('id'=>1,'name'=>'Sovannthai','email'=>'sovannthai@gmail.com'),
            '1'=>array('id'=>2,'name'=>'Sith','email'=>'sith@gmail.com'),
            '2'=>array('id'=>3,'name'=>'Sokvibol','email'=>'sokvibol@gmail.com'),
            '3'=>array('id'=>4,'name'=>'Sokunthea','email'=>'sokunthea@gmail.com')
        );
        return view('page.service')->with('data',$data);
    }
    public function index(){
        return view('page.index');
    }
   
    
}

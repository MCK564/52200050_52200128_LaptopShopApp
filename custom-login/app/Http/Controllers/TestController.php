<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Laptop;
use App\Models\User;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function getAllData(){
        $users = User::all();
        $brands = Brand::all();
        $laptops = Laptop::all();

        return view('test',compact('users','brands','laptops'));
    }
}

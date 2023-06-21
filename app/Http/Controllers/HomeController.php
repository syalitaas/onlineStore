<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $viewData = [];
        $viewData["title"] = "Home Page - Byoodees Store";
        return view('home.index')->with("viewData", $viewData);
    }

    public function about()
    {
        $viewData = [];
        $viewData["title"] = "About us - Byoodees Store";
        $viewData["subtitle"] = "About us";
        $viewData["description"] = "Byoodees Store is a store that sells various kinds of skincares, cosmetics, etc from various brands. #PrettyWithByoodees";
        $viewData["author"] = "Developed by: Syalita Widyandini";
        return view('home.about')->with("viewData", $viewData);
    }
}
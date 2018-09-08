<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Filme;

class FilmesController extends Controller
{
    public function index(){

      $filmes = Filme::all();
      return response()->json($filmes);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Filme_Assistido;

class FilmesAssistidosController extends Controller
{
    public function index(){

      $filmesAssistidos = Filme_Assistido::all();
      return response()->json($filmesAssistidos);
    }
}

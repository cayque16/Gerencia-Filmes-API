<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ano_Meta;

class AnoMetaController extends Controller
{
    public function index(){

    $anoMeta = Ano_Meta::all();
    return response()->json($anoMeta);
  }
}

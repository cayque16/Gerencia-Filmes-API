<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Filme extends Model
{
    protected $fillable = ['imdbID', 'titulo', 'ano', 'duracao', 'nota',
                            'poster', 'posterBytes'];
}

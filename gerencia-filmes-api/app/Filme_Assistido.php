<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Filme_Assistido extends Model
{
    protected $table = 'filmes_assistidos';
    protected $fillable = ['imdbID', 'inedito', 'posAno', 'dataDia', 'dataMes',
                            'dataAno'];
}

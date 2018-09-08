<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Filme_Assistido extends Model
{
    protected $fillable = ['imdbID', 'inedito', 'posAno', 'dataDia', 'dataMes',
                            'dataAno'];
}

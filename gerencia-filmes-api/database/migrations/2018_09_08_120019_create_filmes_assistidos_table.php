<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFilmesAssistidosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('filmes_assistidos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('imdbID',9);
            $table->integer('inedito');
            $table->integer('posAno');
            $table->integer('dataDia');
            $table->integer('dataMes');
            $table->integer('dataAno');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('filmes_assistidos');
    }
}

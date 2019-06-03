<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKategoriBukuTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('buku_kategori', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('buku_id');
            $table->unsignedBigInteger('kategori_id');
            $table->foreign('buku_id')->references('id')->on('buku')->onDelete('cascade');
            $table->foreign('kategori_id')->references('id')->on('kategori')->onDelete('cascade');
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
        Schema::dropIfExists('buku_kategori');
    }
}

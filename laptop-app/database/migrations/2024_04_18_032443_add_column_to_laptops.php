<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('laptops', function (Blueprint $table) {
            $table->string('screen')->nullable();
            $table->string('wireless')->nullable();
            $table->string('system')->nullable();
            $table->string('color')->nullable();
         
            $table->string('battery')->nullable();
            $table->string('keyboard')->nullable();
            $table->string('bluetooth')->nullable();
            $table->string('webcam')->nullable();
            $table->string('lan')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('laptops', function (Blueprint $table) {
          
        });
    }
};

<?php

namespace Database\Seeders;

use App\Models\News;
use Database\Factories\NewsFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class NewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
//        $news = News::factory()->count(6)->create();
        for ($i=0; $i < 10; $i++)
        {
            DB::table('news')->insert(News::factory()->definition());
        }
    }
}

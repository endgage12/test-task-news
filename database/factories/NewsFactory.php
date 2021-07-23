<?php

namespace Database\Factories;

use App\Models\News;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class NewsFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = News::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->title(),
            'content' => $this->faker->text('210'),
            'description' => $this->faker->text('150'),
            'author' => $this->faker->name(),
            'tag' => $this->faker->text('6'),
            'is_favorit' => $this->faker->boolean(),
        ];
    }
}

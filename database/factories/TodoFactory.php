<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class TodoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'tasks'    => $this->faker->name(),
            'priority' => $this->faker->word(),
            'status'   => false
        ];
    }
}

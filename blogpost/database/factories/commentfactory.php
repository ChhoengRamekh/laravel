<?php

use Faker\Generator as Faker;

$factory->define(App\Comment::class, function (Faker $faker) {
    return [
        'text'=>$faker->sentence(3,true)
    ];
});

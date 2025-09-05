effect give @s strength 5 2 false
effect give @s resistance 5 1 false

$execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-1 ~ run particle trail{color:[1.000,0.9,0.05],duration:15,target:[$(x)d, $(y)d, $(z)d]} ~ ~ ~ 0.3 0.3 0.3 0 1 force
$execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-1 ~ run particle trail{color:[0.07,0.07,1.000],duration:15,target:[$(x)d, $(y)d, $(z)d]} ~ ~ ~ 0.3 0.3 0.3 0 1 force
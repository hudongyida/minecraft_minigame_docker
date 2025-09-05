particle flame ~ ~ ~ .4 .4 .4 0.05 1 force
particle wax_on ~ ~ ~ .5 .5 .5 0 1 force
#particle minecraft:dripping_dripstone_lava ~ ~ ~ .5 .5 .5 1 2 force

#tag @s add item.flamethrower.cooldown_check
#function it:tech/utils/cooldown/check {scoreboard:item.flamethrower.cooldown, failTag:item.flamethrower.fail, passTag:item.flamethrower.monster_flame, inputTag:item.flamethrower.cooldown_check, status:0}
execute as @e[tag=monster,distance=..3] unless score @s item.flamethrower.delay matches 1.. run tag @s add item.flamethrower.hit
$execute as @e[tag=monster,tag=item.flamethrower.hit] at @s run function it:tech/ranged/flamethrower/raycast/hit {playerid:$(playerid)}
#execute as @s[tag=item.flamethrower.fail] run tag @s remove item.flamethrower.fail
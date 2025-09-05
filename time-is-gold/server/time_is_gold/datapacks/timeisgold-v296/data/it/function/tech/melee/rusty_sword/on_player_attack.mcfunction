execute unless predicate it:12.5pc run return fail

$execute as @e[tag=monster,scores={entityid=$(entityid)},limit=1] at @s run function it:tech/melee/rusty_sword/monster_attack/init
item modify entity @s weapon.mainhand it:melee/rusty_sword_durability
execute as @s at @s anchored eyes positioned ^ ^ ^.2 run function it:tech/melee/rusty_sword/monster_attack/dust
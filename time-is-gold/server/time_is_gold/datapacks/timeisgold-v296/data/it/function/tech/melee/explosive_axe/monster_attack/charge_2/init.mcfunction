execute if score @s item.explosive_axe.explosion.tick matches 1.. at @s run function it:tech/melee/explosive_axe/monster_attack/charge_2/explosion

# SFX
execute at @s run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 2

scoreboard players set @s item.explosive_axe.explosion.tick 60
$scoreboard players set @s item.explosive_axe.explosion.playerid $(playerid)
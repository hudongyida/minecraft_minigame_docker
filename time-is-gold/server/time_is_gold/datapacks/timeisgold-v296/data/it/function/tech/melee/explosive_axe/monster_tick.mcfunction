execute if score @s item.explosive_axe.explosion.tick matches 1.. run scoreboard players remove @s item.explosive_axe.explosion.tick 1
execute if score @s item.explosive_axe.explosion.tick matches 0 run function it:tech/melee/explosive_axe/monster_attack/charge_2/explosion

# VFX
execute at @s run particle ash ~ ~1 ~ 0.3 0.3 0.3 1 8
execute at @s run particle dust{color:[0.25, 0.25, 0.25],scale:1} ~ ~1 ~ 0.3 0.3 0.3 0.1 2
execute at @s run particle block_crumble{block_state:"tnt"} ~ ~1 ~ 0.3 0.3 0.3 0.1 2
function it:tech/utils/detect/crossbow/fire {advancement:"it:ranged/roulettow_fire", item:"roulettow", path:"it:tech/ranged/roulettow/crossbow/chance"}

execute as @s[tag=!item.roulettow.loser] run function it:tech/ranged/roulettow/crossbow/recharge

execute as @s[tag=item.roulettow.loser] run damage @s 800 magic
execute as @s[tag=item.roulettow.loser] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 0.5 0
execute as @s[tag=item.roulettow.loser] at @s run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 1 1 0
execute as @s[tag=item.roulettow.loser] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0.5 10 force
execute as @s[tag=item.roulettow.loser] run title @s actionbar {"translate":"item.roulettow.message.4"}
execute as @s[tag=item.roulettow.loser] run tag @s remove item.roulettow.loser
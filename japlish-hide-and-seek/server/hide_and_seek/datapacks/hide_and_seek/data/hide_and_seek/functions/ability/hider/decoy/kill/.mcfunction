# 诱饵をキル
kill @s
tp @e[type=ocelot,tag=hider,tag=target] ~ ~-1000 ~
kill @e[type=ocelot,tag=hider,tag=target]

# 演出
#particle minecraft:explosion
#playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.0 1 0.0
execute positioned ~ ~0.5 ~ run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 2 10 force @a
playsound minecraft:entity.player.teleport master @a
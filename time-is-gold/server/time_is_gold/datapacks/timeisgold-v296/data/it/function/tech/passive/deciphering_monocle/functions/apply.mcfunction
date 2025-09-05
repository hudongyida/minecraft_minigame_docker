scoreboard players add @s item.deciphering_monocle.interval 100
effect give @s glowing 1 0 false
execute at @s anchored eyes positioned ^ ^ ^ run particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~1 ~ 0.05 0.05 0.05 0.05 5 force
playsound minecraft:item.spyglass.use player @a ~ ~ ~ 1 0.5 1
function it:tech/utils/effect/sink/init {value:1}
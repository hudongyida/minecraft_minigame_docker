execute at @s as @e[tag=monster,distance=..3] run function it:tech/utils/effect/ignite/apply {firetick:200}
execute at @s as @e[tag=monster,distance=..3] run scoreboard players set @s item.pyrogel.fragility 200
playsound item.firecharge.use player @a ~ ~ ~ 1 1 0
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 10 force
kill @s
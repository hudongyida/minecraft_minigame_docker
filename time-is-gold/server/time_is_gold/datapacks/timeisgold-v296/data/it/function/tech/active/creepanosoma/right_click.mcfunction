function it:tech/utils/detect/right_click {advancement:"it:active/creepanosoma_right_click", item:coal, item_tag:creepanosoma, tag:item.creepanosoma.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.creepanosoma.fail, passTag:item.creepanosoma.use, inputTag:item.creepanosoma.pre, scoreboard:item.creepanosoma.cooldown, status:1}
tag @s[tag=item.creepanosoma.fail] remove item.creepanosoma.fail

execute as @s[tag=item.creepanosoma.use] run function it:tech/utils/cooldown/init {scoreboard:item.creepanosoma.cooldown, value:400}

execute as @s[tag=item.creepanosoma.use] at @s as @e[type=creeper,tag=monster,distance=..10] run function it:tech/utils/effect/stun/init {value:100}
execute as @s[tag=item.creepanosoma.use] at @s as @e[type=creeper,tag=monster,distance=..10] run tag @s add item.creepanosoma.fragility
execute as @s[tag=item.creepanosoma.use] at @s as @n[type=creeper,tag=monster,distance=..10] run playsound minecraft:entity.drowned.swim player @a ~ ~ ~ 1 0 0

# SFX
execute as @s[tag=item.creepanosoma.use] at @s run playsound minecraft:item.bottle.fill player @a ~ ~ ~ 1 1.5 0
execute as @s[tag=item.creepanosoma.use] at @s run playsound minecraft:entity.silverfish.death player @a ~ ~ ~ 1 0 0

# VFX
execute as @s[tag=item.creepanosoma.use] at @s run particle minecraft:dust_color_transition{from_color:[0.000,1.000,0.000],scale:3,to_color:[0.000,0.500,0.500]} ~ ~1 ~ 2 .8 2 0 100 force

tag @s[tag=item.creepanosoma.use] remove item.creepanosoma.use
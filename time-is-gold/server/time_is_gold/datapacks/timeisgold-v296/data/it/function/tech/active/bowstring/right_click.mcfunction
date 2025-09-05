function it:tech/utils/detect/right_click {advancement:"it:active/bowstring_right_click", item:string, item_tag:bowstring, tag:item.bowstring.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.bowstring.fail, passTag:item.bowstring.use, inputTag:item.bowstring.pre, scoreboard:item.bowstring.cooldown, status:1}
execute as @s[tag=item.bowstring.fail] run tag @s remove item.bowstring.fail

execute as @s[tag=item.bowstring.use] run function it:tech/utils/cooldown/init {scoreboard:item.bowstring.cooldown, value:900}
execute as @s[tag=item.bowstring.use] at @s run function system:vfx/expand_circle/init {R:0.450, G:1.000, B:0.900, range:12, step:5}
execute as @s[tag=item.bowstring.use] at @s run playsound minecraft:item.crossbow.shoot player @s ~ ~ ~ 1 0.5 1
execute as @s[tag=item.bowstring.use] at @s as @e[tag=monster,distance=..12] if entity @s[tag=ranged] run function it:tech/utils/effect/stun/init {value:150}
execute as @s[tag=item.bowstring.use] at @s as @e[tag=monster,distance=..12] if entity @s[tag=ranged] run scoreboard players set @s item.bowstring.particle 1
execute as @s[tag=item.bowstring.use] run tag @s remove item.bowstring.use
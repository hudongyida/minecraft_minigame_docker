function it:tech/utils/detect/right_click {advancement:"it:active/muleta_right_click", item_tag:muleta, tag:item.muleta.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.muleta.fail, passTag:item.muleta.use, inputTag:item.muleta.pre, scoreboard:item.muleta.cooldown, status:1}
tag @s[tag=item.muleta.fail] remove item.muleta.fail

execute as @s[tag=item.muleta.use] run function it:tech/utils/cooldown/init {scoreboard:item.muleta.cooldown, value:200}
execute as @s[tag=item.muleta.use] at @s run function it:tech/active/muleta/aggro

# SFX
execute as @s[tag=item.muleta.use] at @s run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1 0
execute as @s[tag=item.muleta.use] at @s run playsound minecraft:item.goat_horn.sound.1 player @a ~ ~ ~ 0.6 2 0

# VFX
execute as @s[tag=item.muleta.use] at @s as @e[tag=monster, distance=..25] run effect give @s glowing 5 10 true
execute as @s[tag=item.muleta.use] at @s run particle flash ~ ~ ~ .5 .5 .5 0 5 force
execute as @s[tag=item.muleta.use] at @s run tellraw @a [{"selector":"@s"},{"text":": 来这里，孩子！","color":"green"}]

tag @s[tag=item.muleta.use] remove item.muleta.use
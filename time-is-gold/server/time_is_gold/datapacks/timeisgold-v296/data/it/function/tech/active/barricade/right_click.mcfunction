function it:tech/utils/detect/right_click {advancement:"it:active/barricade_right_click", item:daylight_detector, item_tag:barricade, tag:item.barricade.pre, type:0}
function it:tech/utils/cooldown/check {scoreboard:item.barricade.cooldown, inputTag:item.barricade.pre, passTag:item.barricade.use, failTag:item.barricade.fail, status:1}
tag @s[tag=item.barricade.fail] remove item.barricade.fail

execute as @s[tag=item.barricade.use] run scoreboard players set @s item.barricade.cooldown 100000
execute as @s[tag=item.barricade.use] run scoreboard players set @s item.barricade.tick 300
execute as @s[tag=item.barricade.use] run scoreboard players set #MAX_VALUE item.barricade.tick 300
execute as @s[tag=item.barricade.use] run function it:tech/active/barricade/summon_wall {angle:0}
execute as @s[tag=item.barricade.use] run function it:tech/active/barricade/summon_wall {angle:90}
execute as @s[tag=item.barricade.use] run function it:tech/active/barricade/summon_wall {angle:180}

# SFX
execute as @s[tag=item.barricade.use] at @s run playsound minecraft:block.anvil.place ambient @s ~ ~ ~ 0.25 2 0.25

tag @s[tag=item.barricade.use] remove item.barricade.use
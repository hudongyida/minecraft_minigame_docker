execute as @s if score @s item.reaper_scythe.damage_sum matches 400.. run tag @s add item.reaper_scythe.get_potion

execute as @s[tag=item.reaper_scythe.get_potion] run give @s minecraft:lingering_potion[minecraft:custom_name={"text":"禁锢灵魂","color":"#aa00aa","italic":false},minecraft:potion_contents={custom_color:2425637,custom_effects:[{amplifier:2,duration:100,id:"wither"}]},max_stack_size=20] 1
execute as @s[tag=item.reaper_scythe.get_potion] run scoreboard players remove @s item.reaper_scythe.damage_sum 400
execute as @s[tag=item.reaper_scythe.get_potion] run tag @s remove item.reaper_scythe.get_potion
title @s[tag=item.reaper_scythe.get_potion] actionbar [{"text": "你因灵魂收割能力获得了一个", "color": "#55ff55", "italic": false}, {"text": "禁锢灵魂", "color": "#aa00aa", "italic": false}, {"text": "！", "color": "#55ff55", "italic": false}]
execute as @s if score @s item.reaper_scythe.damage_sum matches 400.. run function it:tech/melee/reaper_scythe/gimmicks/grant_potion
scoreboard players reset @s item.reaper_scythe.damage_sum
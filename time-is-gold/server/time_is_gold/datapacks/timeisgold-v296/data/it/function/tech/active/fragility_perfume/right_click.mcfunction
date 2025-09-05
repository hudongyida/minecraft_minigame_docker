function it:tech/utils/detect/right_click {advancement:"it:active/fragility_perfume_right_click", item:pitcher_plant, item_tag:fragility_perfume, tag:item.fragility_perfume.use, type:0}

execute as @s[tag=item.fragility_perfume.use] at @s anchored eyes positioned ^ ^ ^ run function it:tech/active/fragility_perfume/raycast_call
execute as @s[tag=item.fragility_perfume.use] at @s run playsound minecraft:block.sand.place hostile @a ~ ~ ~ 1 0.4 0
execute as @s[tag=item.fragility_perfume.use] at @s run tag @s remove item.fragility_perfume.use
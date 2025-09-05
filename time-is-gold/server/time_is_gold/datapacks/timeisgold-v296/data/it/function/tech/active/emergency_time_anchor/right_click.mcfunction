function it:tech/utils/detect/right_click {advancement:"it:active/emergency_time_anchor_right_click", item:verdant_froglight, item_tag:emergency_time_anchor, tag:item.emergency_time_anchor.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.emergency_time_anchor.fail, passTag:item.emergency_time_anchor.use, inputTag:item.emergency_time_anchor.pre, scoreboard:item.emergency_time_anchor.cooldown, status:1}
tag @s[tag=item.emergency_time_anchor.fail] remove item.emergency_time_anchor.fail

execute as @s[tag=item.emergency_time_anchor.use] run scoreboard players set @s item.emergency_time_anchor.cooldown 100000
execute as @s[tag=item.emergency_time_anchor.use] run scoreboard players set @s item.emergency_time_anchor.tick 600
execute as @s[tag=item.emergency_time_anchor.use] run scoreboard players set #MAX_VALUE item.emergency_time_anchor.tick 600
execute as @s[tag=item.emergency_time_anchor.use] at @s run summon armor_stand ~ ~ ~ {Tags:["item.emergency_time_anchor.armor_stand.anchor"],Team:"color_green",Marker:1b,Glowing:1b,NoGravity:1b,Invisible:1b,equipment:{head:{id:"minecraft:verdant_froglight",count:1b}}}
execute as @s[tag=item.emergency_time_anchor.use] at @s as @n[type=armor_stand,tag=item.emergency_time_anchor.armor_stand.anchor,distance=..0.5] run scoreboard players set @s item.emergency_time_anchor.tick 600 
# SFX
execute as @s[tag=item.emergency_time_anchor.use] at @s run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 1.5 0

tag @s[tag=item.emergency_time_anchor.use] remove item.emergency_time_anchor.use
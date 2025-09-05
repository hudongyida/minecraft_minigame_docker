$scoreboard objectives add debug.hit_check_is_sans.bit$(index) dummy
$execute if entity @s[advancements={system:eventlistener/monster_attack={bit$(index)=true}}] run scoreboard players operation @s debug.hit_check_is_sans.bitsum += #DEBUG debug.hit_check_is_sans.bitsum
$execute if entity @s[advancements={system:eventlistener/monster_attack={bit$(index)=true}}] run scoreboard players set @s debug.hit_check_is_sans.bit$(index) 1
$execute unless entity @s[advancements={system:eventlistener/monster_attack={bit$(index)=true}}] run scoreboard players set @s debug.hit_check_is_sans.bit$(index) 0

scoreboard players operation #DEBUG debug.hit_check_is_sans.bitsum *= #2 scoreboardConstant

execute store result score @s debug.hit_check_is_sans.loop_iterator run data get storage timeisgold:function_api stack[-1].index
execute if score @s debug.hit_check_is_sans.loop_iterator matches ..30 run scoreboard players add @s debug.hit_check_is_sans.loop_iterator 1
execute if score @s debug.hit_check_is_sans.loop_iterator matches ..30 store result storage timeisgold:function_api stack[-1].index int 1 run scoreboard players get @s debug.hit_check_is_sans.loop_iterator
execute if score @s debug.hit_check_is_sans.loop_iterator matches ..30 run function it:tech/debug/hit_check_is_sans/collect_bits with storage timeisgold:function_api stack[-1]

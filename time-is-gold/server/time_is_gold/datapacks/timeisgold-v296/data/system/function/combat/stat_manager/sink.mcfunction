# 💫 침잠 관련 스탯 관리 함수.

# 침잠 관련 스탯 초기화
scoreboard players set @s combat.sink.total_multiplier 100
scoreboard players set @s[type=player] combat.sink.stack_value 2
scoreboard players set @s[tag=monster] combat.sink.stack_value 5
scoreboard players set @s[tag=monster,tag=boss] combat.sink.stack_value 1

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# paranoia
execute as @s[scores={item.paranoia.sink_amplifier_tick=1..}] run scoreboard players operation @s combat.sink.stack_value *= #3 scoreboardConstant

###被动物品S ADD - - - - - - - - - - - -



### MELEE WEAPONS ADD - - - - - - - - - - - -



### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -

# VFX
execute as @s[type=player] if score @s combat.sink matches 1.. at @s run function system:vfx/stat_effect/sink

# 데미지 감소 비율 계산
scoreboard players operation @s combat.sink.stack_value *= @s combat.sink
scoreboard players operation @s combat.sink.total_multiplier -= @s combat.sink.stack_value

scoreboard players operation @s[type=player] combat.sink.total_multiplier > #50 scoreboardConstant
scoreboard players operation @s[tag=monster] combat.sink.total_multiplier > #80 scoreboardConstant

scoreboard players set @s combat.sink.total_diff 100
scoreboard players operation @s combat.sink.total_diff -= @s combat.sink.total_multiplier
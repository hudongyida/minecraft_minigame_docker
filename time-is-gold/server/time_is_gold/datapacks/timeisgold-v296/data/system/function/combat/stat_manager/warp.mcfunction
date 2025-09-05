# ⚕️ 뒤틀림 관련 아이템 스탯 관리 함수.

scoreboard players set @s dungeon.temporal_warp 0

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# windup_clock
execute if items entity @s container.* *[custom_data~{item:windup_clock}] run scoreboard players add @s dungeon.temporal_warp 10
execute if items entity @s weapon.offhand *[custom_data~{item:windup_clock}] run scoreboard players add @s dungeon.temporal_warp 10

###被动物品S ADD - - - - - - - - - - - -

# wandering_soul
execute if items entity @s container.* *[custom_data~{item:wandering_soul}] run scoreboard players add @s dungeon.temporal_warp 4
execute if items entity @s weapon.offhand *[custom_data~{item:wandering_soul}] run scoreboard players add @s dungeon.temporal_warp 4

# arc_fusion_core
execute if items entity @s container.* *[custom_data~{item:arc_fusion_core}] run scoreboard players add @s dungeon.temporal_warp 8
execute if items entity @s weapon.offhand *[custom_data~{item:arc_fusion_core}] run scoreboard players add @s dungeon.temporal_warp 8

# holy_berries
execute if items entity @s hotbar.* *[custom_data~{item:holy_berries}] run scoreboard players remove @s dungeon.temporal_warp 5

# saint_berries
execute if items entity @s hotbar.* *[custom_data~{item:saint_berries}] run scoreboard players remove @s dungeon.temporal_warp 15

# silent_faith
execute if items entity @s container.* *[custom_data~{item:silent_faith}] run scoreboard players operation @s dungeon.temporal_warp += @s item.silent_faith.count
execute if items entity @s weapon.offhand *[custom_data~{item:silent_faith}] run scoreboard players operation @s dungeon.temporal_warp += @s item.silent_faith.count

# rosegold
execute if items entity @s container.* *[custom_data~{item:rosegold}] run scoreboard players add @s dungeon.temporal_warp 8
execute if items entity @s weapon.offhand *[custom_data~{item:rosegold}] run scoreboard players add @s dungeon.temporal_warp 8

### MELEE WEAPONS ADD - - - - - - - - - - - -



### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -

scoreboard players operation #SYSTEM dungeon.warp += @s dungeon.warp
scoreboard players operation #SYSTEM dungeon.warp += @s dungeon.temporal_warp
# 액티브 아이템 사용 여부를 결정하는 시스템을 처리하는 함수.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

scoreboard players set @s combat.active_ability_check 1

### SYSTEM  - - - - - - - - - - - - - - - - -

# energy_construct
execute if score @s monsters.floor2.energy_construct.lockdown_tick matches 1.. run scoreboard players set @s combat.active_ability_check 0

### ACTIVE ITEMS ADD  - - - - - - - - - - - -



###被动物品S ADD - - - - - - - - - - - -

# anticognition_field
execute if score @s item.anticognition_field.tick matches 1.. run scoreboard players set @s combat.active_ability_check 0

### MELEE WEAPONS ADD - - - - - - - - - - - -



### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -

# VFX 실행
execute unless score @s combat.active_ability_check matches 1.. at @s run function system:vfx/stat_effect/active_ability_check
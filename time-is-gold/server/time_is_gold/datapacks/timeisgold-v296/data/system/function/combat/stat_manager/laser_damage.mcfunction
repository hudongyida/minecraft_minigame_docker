# **레이저 무기 전용** 데미지 스탯을 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

# 이 함수는 반드시 system:combat/stat_manager/ranged_damage 함수 이후에 실행되어야 함

execute as @s run scoreboard players operation @s combat.laser.damage_deltaX10 = @s combat.ranged.damage_deltaX10
execute as @s run scoreboard players operation @s combat.laser.damage_multiplier = @s combat.ranged.damage_multiplier

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# flag_of_command
execute as @s[tag=item.flag_of_command.laser_enforce] run scoreboard players add @s combat.laser.damage_multiplier 50

###被动物品S ADD - - - - - - - - - - - -



### MELEE WEAPONS ADD - - - - - - - - - - - -



### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -



# 원거리 데미지 스탯을 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

scoreboard players set @s combat.ranged.damage_deltaX10 0
scoreboard players set @s combat.ranged.damage_multiplier 100

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# anticognition_field
execute as @s if score @s item.anticognition_field.tick matches 1.. run scoreboard players remove @s combat.ranged.damage_multiplier 1000

# purifying_salt
execute as @s if score @s item.purifying_salt.tick matches 1.. run scoreboard players operation @s combat.ranged.damage_multiplier += @s item.purifying_salt.damage_bonus

###被动物品S ADD - - - - - - - - - - - -

# Sigil of Arrow
execute as @s if score @s item.sigil_of_arrows.active matches 1.. run scoreboard players add @s combat.ranged.damage_deltaX10 60

# scientific_calculator
execute as @s if score @s item.scientific_calculator.damage_bonus matches 1.. run scoreboard players operation @s combat.ranged.damage_multiplier += @s item.scientific_calculator.damage_bonus

# clutch pedal
execute as @s if score @s item.clutch_pedal.range matches 1.. run scoreboard players add @s combat.ranged.damage_multiplier 100

# pebble
execute as @s if score @s item.pebble.count matches 1.. run scoreboard players operation @s item.pebble.count *= #10 scoreboardConstant
execute as @s if score @s item.pebble.count matches 1.. run scoreboard players operation @s combat.ranged.damage_deltaX10 += @s item.pebble.count

# air_shotter
execute as @s if score @s item.air_shotter.active matches 1.. run scoreboard players add @s combat.ranged.damage_deltaX10 30

# arc_fusion_core
execute if score @s item.arc_fusion_core.active matches 1.. run scoreboard players add @s combat.ranged.damage_multiplier 25

### MELEE WEAPONS ADD - - - - - - - - - - - -

# 维度碎片
execute as @s if score @s item.dimensional_fragment.active matches 1 run scoreboard players remove @s combat.ranged.damage_multiplier 1000

### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -



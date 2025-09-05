# 원거리 데미지 스탯을 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

execute as @s run scoreboard players set @s combat.magic.damage_deltaX10 0
execute as @s run scoreboard players set @s combat.magic.damage_multiplier 100

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# anticognition_field
execute as @s if score @s item.anticognition_field.tick matches 1.. run scoreboard players remove @s combat.magic.damage_multiplier 1000

# purifying_salt
execute as @s if score @s item.purifying_salt.tick matches 1.. run scoreboard players operation @s combat.magic.damage_multiplier += @s item.purifying_salt.damage_bonus

###被动物品S ADD - - - - - - - - - - - -

# scientific_calculator
execute as @s if score @s item.scientific_calculator.damage_bonus matches 1.. run scoreboard players operation @s combat.magic.damage_multiplier += @s item.scientific_calculator.damage_bonus

### MELEE WEAPONS ADD - - - - - - - - - - - -

# 维度碎片
execute as @s if score @s item.dimensional_fragment.active matches 1.. run scoreboard players remove @s combat.magic.damage_multiplier 1000

### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -



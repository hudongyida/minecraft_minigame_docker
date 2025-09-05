# 근접 사거리 스탯을 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

execute as @s run scoreboard players set @s combat.melee.attack_range_deltaX100 0
execute as @s run scoreboard players set @s combat.melee.attack_range_multiplier 100

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# ar_m
execute as @s[scores={item.ar_m.count=1..}] run scoreboard players operation @s combat.stat_manager.temp = @s item.ar_m.count
execute as @s[scores={item.ar_m.count=1..}] run scoreboard players operation @s combat.stat_manager.temp *= #100 scoreboardConstant
execute as @s[scores={item.ar_m.count=1..}] run scoreboard players operation @s combat.melee.attack_range_deltaX100 += @s combat.stat_manager.temp

# Dike's Justice
execute as @s[scores={item.dike_justice.active=1..}] run scoreboard players add @s combat.melee.attack_range_deltaX100 200

###被动物品S ADD - - - - - - - - - - - -



### MELEE WEAPONS ADD - - - - - - - - - - - -

# bamboo_spear
execute as @s if items entity @s weapon.mainhand *[custom_data~{item:bamboo_spear}] run scoreboard players add @s combat.melee.attack_range_deltaX100 200

### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -


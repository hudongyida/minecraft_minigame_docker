# 근접 속도 스탯을 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

execute as @s run scoreboard players set @s combat.melee.attack_speed_deltaX10 0
execute as @s run scoreboard players set @s combat.melee.attack_speed_multiplier 100

### ACTIVE ITEMS ADD  - - - - - - - - - - - -



###被动物品S ADD - - - - - - - - - - - -

# scabbard
execute as @s if score @s item.scabbard.attack_speed matches 1 run scoreboard players add @s combat.melee.attack_speed_multiplier 50

### MELEE WEAPONS ADD - - - - - - - - - - - -

# Reaper Scythe
execute as @s[scores={item.reaper_scythe.veils=1..}] if items entity @s weapon.mainhand *[custom_data~{item:reaper_scythe}] run scoreboard players add @s combat.melee.attack_speed_multiplier 100

# timebreaker
execute as @s if score @s item.timebreaker.empowered matches 1.. if items entity @s weapon.mainhand *[custom_data~{item:timebreaker}] run scoreboard players add @s combat.melee.attack_speed_multiplier 150

### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -

# Body Time 加速 Potion
execute as @s[scores={item.body_time_potion.time=1..}] run scoreboard players add @s combat.melee.attack_speed_multiplier 20

### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -

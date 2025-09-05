# 대상의 속도를 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

execute as @s run scoreboard players set @s combat.speed_deltaX10 0
execute as @s run scoreboard players set @s combat.speed_multiplier 100

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# Bunnyhop
execute as @s[scores={item.bunnyhop.active=1..}] run scoreboard players add @s combat.speed_multiplier 20

# tome_of_kinetic_energy
execute as @s[scores={item.tome_of_kinetic_energy.active=1..}] run scoreboard players add @s combat.speed_multiplier 10

###被动物品S ADD - - - - - - - - - - - -

# moonwalker
execute as @s[scores={item.moonwalker.effect_check=1..}] run scoreboard players add @s combat.speed_multiplier 100

### MELEE WEAPONS ADD - - - - - - - - - - - -

# greatsword
execute as @s if items entity @s container.* *[custom_data~{item:greatsword}] run scoreboard players remove @s combat.speed_multiplier 5
execute as @s if items entity @s weapon.offhand *[custom_data~{item:greatsword}] run scoreboard players remove @s combat.speed_multiplier 5

### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -



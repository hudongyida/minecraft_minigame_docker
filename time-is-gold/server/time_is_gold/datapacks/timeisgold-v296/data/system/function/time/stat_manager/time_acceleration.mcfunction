# 시간의 속도를 조절하는 아이템은 여기서 변경
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

scoreboard players set @s system.time.flow_speed 20
scoreboard players operation @s system.time.flow_period = @s system.time.flow_speed

### ACTIVE ITEMS ADD  - - - - - - - - - - - -



###被动物品S ADD - - - - - - - - - - - -

# enlighten_knowledge
execute if score @s item.enlighten_knowledge.number_of_books matches 1.. run scoreboard players operation @s system.time.flow_period -= @s item.enlighten_knowledge.number_of_books

### MELEE WEAPONS ADD - - - - - - - - - - - -

# scrapscaper
execute if items entity @s hotbar.* *[custom_data~{item:scrapscaper}] run scoreboard players remove @s system.time.flow_period 7
execute unless items entity @s hotbar.* *[custom_data~{item:scrapscaper}] if items entity @s weapon.offhand *[custom_data~{item:scrapscaper}] run scoreboard players remove @s system.time.flow_period 7

### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -

# Body time potion
execute as @s[scores={item.body_time_potion.time=2400..}] run scoreboard players remove @s system.time.flow_period 3

# Rage-inducing potion
execute as @s[scores={item.rage_inducing_potion.time_acceleration=1..}] run scoreboard players remove @s system.time.flow_period 2

# uranium_ingot
execute as @s[scores={item.uranium_ingot.tick=1..}] run scoreboard players remove @s system.time.flow_period 4

### SYSTEM - - - - - - - - - - - - -

execute if score @s system.time.flow_period matches ..19 at @s run function system:vfx/stat_effect/time_acceleration
scoreboard players operation @s system.time.flow_speed = @s system.time.flow_period 
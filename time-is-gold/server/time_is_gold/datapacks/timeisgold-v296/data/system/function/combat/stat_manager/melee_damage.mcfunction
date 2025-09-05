# 근접 데미지 스탯을 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

execute as @s run scoreboard players set @s combat.melee.damage_deltaX10 0
execute as @s run scoreboard players set @s combat.melee.damage_multiplier 100

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# Training Weights
execute as @s[scores={item.training_weights.active=1..}] run scoreboard players add @s combat.melee.damage_deltaX10 20

# Dike's Justice
execute as @s[scores={item.dike_justice.active=1..}] run scoreboard players add @s combat.melee.damage_multiplier 50

# anticognition_field
execute as @s[scores={item.anticognition_field.tick=1..}] run scoreboard players remove @s combat.melee.damage_multiplier 1000

# purifying_salt
execute as @s if score @s item.purifying_salt.tick matches 1.. run scoreboard players operation @s combat.melee.damage_multiplier += @s item.purifying_salt.damage_bonus

###被动物品S ADD - - - - - - - - - - - -

# Stopwatch
execute as @s[scores={item.stopwatch.active=1..}] run scoreboard players add @s combat.melee.damage_multiplier 50

# scientific_calculator
execute as @s[scores={item.scientific_calculator.damage_bonus=1..}] run scoreboard players operation @s combat.melee.damage_multiplier += @s item.scientific_calculator.damage_bonus

# tome of kinetic energy
execute as @s[scores={item.tome_of_kinetic_energy.speed=1..}] run scoreboard players operation @s combat.melee.damage_multiplier += @s item.tome_of_kinetic_energy.speed
execute as @s[scores={item.tome_of_kinetic_energy.speed=1..}] run scoreboard players reset @s item.tome_of_kinetic_energy.speed

# counter_counter
execute as @s[scores={item.counter_counter.stack_count=1..}] run scoreboard players operation @s combat.melee.damage_deltaX10 += @s item.counter_counter.damage_bonus

# silent_faith
execute as @s[scores={item.silent_faith.count=1..}] run scoreboard players operation @s combat.melee.damage_deltaX10 += @s item.silent_faith.count_multiplier

# enlighten_knowledge
execute as @s[scores={item.enlighten_knowledge.damage_multiplier=1..}] run scoreboard players operation @s combat.melee.damage_deltaX10 += @s item.enlighten_knowledge.damage_multiplier

# noble_leap
execute as @s[scores={item.noble_leap.damage_bonus=1..}] run scoreboard players operation @s combat.melee.damage_multiplier += @s item.noble_leap.damage_bonus

### MELEE WEAPONS ADD - - - - - - - - - - - -

# 维度碎片
execute as @s[scores={item.dimensional_fragment.active=1..}] run scoreboard players remove @s combat.melee.damage_multiplier 10

### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -



### POTENTIALITY ADD - - - - - - - - - - - - -

# Terminally Ill
execute as @s[scores={potential.terminally_ill=1}] run scoreboard players add @s combat.melee.damage_multiplier 400
#execute as @s[scores={potential.terminally_ill=1}] run attribute @s minecraft:generic.attack_damage modifier add potential.terminally_ill 5 add_multiplied_total

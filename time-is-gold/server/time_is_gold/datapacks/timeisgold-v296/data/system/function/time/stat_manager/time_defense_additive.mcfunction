# 시간 방어 절댓값 수치 관리 함수

scoreboard players set @s system.time.time_defense_additive 0
scoreboard players set @s system.time.time_defense_temp 0

# 헬멧 데미지 감소 수치 불러오기
execute if items entity @s armor.head * store result score @s system.time.time_defense_temp run data get entity @s equipment.head.components."minecraft:custom_data".armor.additive
scoreboard players operation @s system.time.time_defense_additive += @s system.time.time_defense_temp
scoreboard players set @s system.time.time_defense_temp 0

# 흉갑 데미지 감소 수치 불러오기
execute if items entity @s armor.chest * store result score @s system.time.time_defense_temp run data get entity @s equipment.chest.components."minecraft:custom_data".armor.additive
scoreboard players operation @s system.time.time_defense_additive += @s system.time.time_defense_temp
scoreboard players set @s system.time.time_defense_temp 0

# 바지 데미지 감소 수치 불러오기
execute if items entity @s armor.legs * store result score @s system.time.time_defense_temp run data get entity @s equipment.legs.components."minecraft:custom_data".armor.additive
scoreboard players operation @s system.time.time_defense_additive += @s system.time.time_defense_temp
scoreboard players set @s system.time.time_defense_temp 0

# 신발 데미지 감소 수치 불러오기
execute if items entity @s armor.feet * store result score @s system.time.time_defense_temp run data get entity @s equipment.feet.components."minecraft:custom_data".armor.additive
scoreboard players operation @s system.time.time_defense_additive += @s system.time.time_defense_temp
scoreboard players set @s system.time.time_defense_temp 0

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# pocket_refrigerator
execute as @s if entity @s[scores={item.pocket_refrigerator.tick=1..}] run scoreboard players add @s system.time.time_defense_additive 120

###被动物品S ADD - - - - - - - - - - - -



### MELEE WEAPONS ADD - - - - - - - - - - - -



### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -
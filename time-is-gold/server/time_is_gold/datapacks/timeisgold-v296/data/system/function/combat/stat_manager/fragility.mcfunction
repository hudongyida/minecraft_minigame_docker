# ☣️ 취약 관련 아이템 스탯 관리 함수.
# 실행 인자: @e[tag=monster]

scoreboard players set @s[scores={combat.fragility=1..}] combat.fragility 0

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# Creepanosoma
execute as @s[tag=item.creepanosoma.fragility] run scoreboard players add @s combat.fragility 30

# Paranoia
execute as @s[scores={item.paranoia.fragility_tick=1..}] run scoreboard players add @s combat.fragility 20

# pyrogel
execute as @s[scores={item.pyrogel.fragility=1..}] run scoreboard players add @s combat.fragility 20

# stasis_field
execute as @s[scores={item.stasis_field.fragility=1..}] run scoreboard players add @s combat.fragility 30

###被动物品S ADD - - - - - - - - - - - -

# Gliding
execute as @s[scores={item.gliding.fragile=1..}] run scoreboard players add @s combat.fragility 30

# book_of_the_unknown
execute as @s[scores={item.book_of_the_unknown.fragility=1..}] run scoreboard players add @s combat.fragility 20

# revelatory_record
execute as @s[scores={item.revelatory_record.fragility=1..}] run scoreboard players operation @s combat.fragility += @s item.revelatory_record.fragility_delta

### MELEE WEAPONS ADD - - - - - - - - - - - -

# dimensional_fragment
execute as @s[scores={item.dimensional_fragment.fragility_tick=1..}] run scoreboard players add @s combat.fragility 50

# cherry_branch
execute as @s[scores={item.cherry_branch.fragility_tick=1..}] run scoreboard players add @s combat.fragility 20

# chronospark
execute as @s[scores={item.chronospark.fragility=1..}] run scoreboard players add @s combat.fragility 10

# manchineel_sword
execute as @s[scores={item.manchineel_sword.fragility_tick=1..}] run scoreboard players add @s combat.fragility 20

# throwing_knife
execute as @s[scores={item.throwing_knife.fragility_tick=1..}] run scoreboard players add @s combat.fragility 30

# rapier
execute as @s[scores={item.rapier.fragility=1..}] run scoreboard players add @s combat.fragility 20

### RANGED WEAPONS ADD  - - - - - - - - - - -

# flamethrower
execute as @s[scores={item.flamethrower.fragility=1..}] run scoreboard players add @s combat.fragility 10


### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -

# neurotoxin
execute as @s[scores={item.neurotoxin.fragility_tick=1..}] run scoreboard players add @s combat.fragility 40

# 易伤 Perfume
execute as @s[tag=item.fragility_perfume.doubled] run scoreboard players operation @s combat.fragility *= #2 scoreboardConstant

# 보스 몬스터 취약 수치 보정
execute as @s[tag=boss,scores={combat.fragility=1..}] run scoreboard players operation @s combat.fragility *= #2 scoreboardConstant
execute as @s[tag=boss,scores={combat.fragility=1..}] run scoreboard players operation @s combat.fragility /= #10 scoreboardConstant
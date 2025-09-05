# 안전 낙하 거리를 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

scoreboard players set @s combat.safe_fall_distance_deltaX10 0
scoreboard players set @s combat.safe_fall_distance_multiplier 100

### SYSTEM  - - - - - - - - - - - - - - - - -

# 다음 층 생성 시작 ~ 시작 방 문 열리기 전까지 안전 낙하 거리 증가
execute unless score #SYSTEM system.gamemanager.floor_started matches 1 run scoreboard players add @s combat.safe_fall_distance_deltaX10 10000

### ACTIVE ITEMS ADD  - - - - - - - - - - - -



###被动物品S ADD - - - - - - - - - - - -

# bunnyhop
execute as @s[scores={item.bunnyhop.active=1..}] run scoreboard players add @s combat.safe_fall_distance_deltaX10 30

# sigil_of_leap
execute as @s[scores={item.sigil_of_leap.safe_fall_distance=1..}] run scoreboard players add @s combat.safe_fall_distance_deltaX10 50

# arthcomociph
execute as @s[scores={item.arthcomociph.active=1}] run scoreboard players add @s combat.safe_fall_distance_deltaX10 100

# chiseled_comet
execute as @s[scores={item.chiseled_comet.active=1}] run scoreboard players add @s combat.safe_fall_distance_deltaX10 50

### MELEE WEAPONS ADD - - - - - - - - - - - -

# Reaper Scythe
execute as @s[scores={item.reaper_scythe.veils=1..}] run scoreboard players add @s combat.safe_fall_distance_deltaX10 100

### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -


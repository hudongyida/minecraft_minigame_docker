# 정체 관련 아이템 스탯 관리 함수.
# 실행 인자: @a

scoreboard players set @s system.time.stasis 0

### SYSTEM  - - - - - - - - - - - - - - - - -

# 시작 방 문이 열리지 않은 경우 정체 효과 부여
execute as @s if score #SYSTEM system.gamemanager.floor_started matches 0 run scoreboard players set @s system.time.stasis 1

# 특수방 진입 시 정체 효과 부여
execute as @s if score @s system.gamemanager.player_detection.structure_id matches 0..100 run scoreboard players set @s system.time.stasis 1

# 보스전 종료 시 정체 효과 부여
execute as @s if score #SYSTEM system.gamemanager.bossfight.end_check matches 1 run scoreboard players set @s system.time.stasis 1

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# emergency_time_anchor
# function it:tech/active/emergency_time_anchor/main에서 실행됨

###被动物品S ADD - - - - - - - - - - - -

# unstabilization_anchor
execute if score @s item.unstabilization_anchor.active matches 1.. run scoreboard players set @s system.time.stasis 1

### MELEE WEAPONS ADD - - - - - - - - - - - -

# twisted_weapons
# 각 아이템의 main 함수에서 실행됨

### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -



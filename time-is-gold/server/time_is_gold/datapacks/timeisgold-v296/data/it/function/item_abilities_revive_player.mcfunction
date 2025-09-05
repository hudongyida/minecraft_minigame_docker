# 실행 인자: 타이머가 0이 된 플레이어
# 이 함수는 system:gamemanager/player_death/init에서 실행됩니다.
# 이 함수가 실행된 이후 타이머가 0이 아닌 플레이어는 사망 처리되지 않습니다.

### SYSTEM - - - - - - - - - - - - - - - - -

# sacrifice active check
execute if score @s item.sacrifice.target matches 0.. run return fail

### ACTIVE ITEMS - - - - - - - - - - - - - -

# chronos_bonfire
execute as @s if score @s item.chronos_bonfire.active matches 1 run function it:tech/active/chronos_bonfire/revive_player

###被动物品S - - - - - - - - - - - - - -

# necronomicon
execute as @s if score @s item.necronomicon.active matches 1 run function it:tech/passive/necronomicon/revive_player

### MELEE WEAPONS - - - - - - - - - - - - - -



### RANGED WEAPONS - - - - - - - - - - - -



### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -



# 플레이어가 원거리 공격으로 몬스터 처치 시 시 발생하는 효과 처리 이벤트
# 실행 인자: @a[advancements={system:eventlistener/monster_kill/monster_kill={ranged=true}}]


### SYSTEM - - - - - - - - - - - - - - - - -

# Debug
#say ranged kill

### ACTIVE ITEMS - - - - - - - - - - - - - -



###被动物品S - - - - - - - - - - - - - -



### MELEE WEAPONS - - - - - - - - - - - - - -



### RANGED WEAPONS - - - - - - - - - - - -

# hunter_bow
execute as @s[advancements={it:ranged/hunter_bow_kill=true}] run function it:tech/ranged/hunter_bow/trigger_kill

### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -
# 플레이어가 직접 클릭해 몬스터 처치 시 시 발생하는 효과 처리 이벤트
# 실행 인자: @a[advancements={system:eventlistener/monster_kill/monster_kill={player_attack=true}}]


### SYSTEM - - - - - - - - - - - - - - - - -

# Debug
#say player attack kill

### ACTIVE ITEMS - - - - - - - - - - - - - -



###被动物品S - - - - - - - - - - - - - -



### MELEE WEAPONS - - - - - - - - - - - - - -

# condenser
execute if items entity @s weapon.mainhand *[custom_data~{item:condenser}] run function it:tech/melee/condenser/on_player_attack_kill

# lancet
execute if items entity @s weapon.mainhand *[custom_data~{item:lancet}] run function it:tech/melee/lancet/on_player_attack_kill

# midas_sword
execute if items entity @s weapon.mainhand *[custom_data~{item:midas_sword}] run function it:tech/melee/midas_sword/on_player_attack_kill

# zero_point
execute if items entity @s weapon.mainhand *[custom_data~{item:zero_point}] run function it:tech/melee/zero_point/on_player_attack_kill

### RANGED WEAPONS - - - - - - - - - - - -



### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -
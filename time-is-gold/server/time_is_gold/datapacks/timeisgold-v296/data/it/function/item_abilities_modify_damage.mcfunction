# 받은 데미지를 조절하는 효과를 보유한 아이템의 능력 실행
# 이 함수는 system:time/damage_to_time 함수에서 실행됩니다.
# 실행 인자: system.time.damage_taken의 값이 0이 아닌 모든 플레이어

# debug
#tellraw @a [{"score":{"name": "@s","objective": "system.time.damage_taken"}}]

### SYSTEM - - - - - - - - - - - - - - - - -

# 무적 상태라면 받은 데미지 삭제
execute as @s[scores={combat.invincibility=1..}] run scoreboard players set @s system.time.damage_taken 0
execute as @s[scores={combat.invincibility=1..}] run return 0

# Riftmancer
execute as @s[scores={monsters.floor2.riftmancer.damage_amplifier.tick=1..}] run scoreboard players operation @s system.time.damage_taken *= #3 scoreboardConstant
execute as @s[scores={monsters.floor2.riftmancer.damage_amplifier.tick=1..}] run scoreboard players operation @s system.time.damage_taken /= #2 scoreboardConstant

### ACTIVE ITEMS - - - - - - - - - - - - - -



###被动物品S - - - - - - - - - - - - - -

# Request Timeout
execute as @s[scores={item.request_timeout.nullify_check=1..}] run function it:tech/passive/request_timeout/on_taking_damage

# superpositioned_charm
execute as @s[scores={item.superpositioned_charm.ability_check=1..}] run function it:tech/passive/superpositioned_charm/on_taking_damage

# Sigil of Shield
execute as @s[scores={item.sigil_of_shield.active=1..}] run function it:tech/passive/sigil_of_shield/on_taking_damage

# unstabilization_anchor
execute as @s[scores={item.unstabilization_anchor.active=1..}] run scoreboard players operation @s system.time.damage_taken *= #3 scoreboardConstant

### MELEE WEAPONS - - - - - - - - - - - - - -



### RANGED WEAPONS - - - - - - - - - - - -



### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -


# 플레이어가 모든 종류의 공격으로 몬스터 처치 시 시 발생하는 효과 처리 이벤트
# 실행 인자: @a[advancements={system:eventlistener/monster_kill/monster_kill=true}]


### SYSTEM - - - - - - - - - - - - - - - - -



### ACTIVE ITEMS - - - - - - - - - - - - - -

# stasis_field
execute if items entity @s container.* *[custom_data~{item:stasis_field}] run scoreboard players add @s item.stasis_field.charge 2
execute if items entity @s weapon.offhand *[custom_data~{item:stasis_field}] run scoreboard players add @s item.stasis_field.charge 2

# ashy_furance
execute if items entity @s container.* *[custom_data~{item:ashy_furance}] run scoreboard players add @s item.ashy_furance.charge 2
execute if items entity @s weapon.offhand *[custom_data~{item:ashy_furance}] run scoreboard players add @s item.ashy_furance.charge 2

###被动物品S - - - - - - - - - - - - - -

# rosegold
execute if score @s item.rosegold.active matches 1.. at @s run function it:tech/passive/rosegold/on_any_kill

### MELEE WEAPONS - - - - - - - - - - - - - -



### RANGED WEAPONS - - - - - - - - - - - -



### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -
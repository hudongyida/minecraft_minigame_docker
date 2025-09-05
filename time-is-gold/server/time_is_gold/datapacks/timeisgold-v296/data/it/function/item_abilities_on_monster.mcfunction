# 실행 인자: 몬스터
# 이 함수는 monsters:tech/monster_abilities에서 실행됩니다.



### ACTIVE ITEMS - - - - - - - - - - - - - -

# Your Fault
execute as @s[tag=!item.your_fault.sinked] if function it:tech/active/the_fault/attack_by_allies run function it:tech/active/the_fault/apply_sink

# paranoia
execute as @s[scores={item.paranoia.fragility_tick=1..}] run scoreboard players remove @s item.paranoia.fragility_tick 1
execute as @s[scores={item.paranoia.sink_amplifier_tick=1..}] run scoreboard players remove @s item.paranoia.sink_amplifier_tick 1

# pyrogel
execute if score @s item.pyrogel.fragility matches 1.. run scoreboard players remove @s item.pyrogel.fragility 1
execute if score @s item.pyrogel.fragility matches 0 run scoreboard players reset @s item.pyrogel.fragility

execute if score @s item.tome_of_hyper_epsilon_delta.tick matches 1.. run function it:tech/active/tome_of_hyper_epsilon_delta/tick

###被动物品S - - - - - - - - - - - - - -

# book_of_the_unknown
execute as @s if score @s item.book_of_the_unknown.fragility matches 1.. run scoreboard players remove @s item.book_of_the_unknown.fragility 1

# deciphering_monocle
execute as @s if score @s item.deciphering_monocle.interval matches 1.. run scoreboard players remove @s item.deciphering_monocle.interval 1

# revelatory_record
execute as @s if score @s item.revelatory_record.fragility matches 1.. run scoreboard players remove @s item.revelatory_record.fragility 1
execute as @s unless score @s item.revelatory_record.fragility matches 1.. if score @s item.revelatory_record.fragility_delta matches 1.. run scoreboard players reset @s item.revelatory_record.fragility_delta

# gliding
execute as @s if score @s item.gliding.fragile matches 1.. run scoreboard players remove @s item.gliding.fragile 1

### MELEE WEAPONS - - - - - - - - - - - - - -

# manchineel_sword
execute as @s[scores={item.manchineel_sword.fragility_tick=1..}] run scoreboard players remove @s item.manchineel_sword.fragility_tick 1

# explosive_axe
execute as @s[scores={item.explosive_axe.explosion.tick=1..}] run function it:tech/melee/explosive_axe/monster_tick

# throwing_knife
execute as @s[scores={item.throwing_knife.fragility_tick=1..}] run scoreboard players remove @s item.throwing_knife.fragility_tick 1

# zero_point
execute as @s[tag=item.zero_point.stun_particle] at @s run function it:tech/melee/zero_point/vfx

### RANGED WEAPONS - - - - - - - - - - - -



### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -



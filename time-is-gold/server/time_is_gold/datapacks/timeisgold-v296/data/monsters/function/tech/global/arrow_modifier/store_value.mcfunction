### Floor 1 - - - - - - - - - -

# Mechanical Skeleton
execute as @s[tag=mechanical_skeleton] run scoreboard players set @s monsters.global.arrow_modifier.final_damage 5
# Miner Skeleton
execute as @s[tag=miner_skeleton] run scoreboard players set @s monsters.global.arrow_modifier.final_damage 6
# Factory Executive
execute as @s[tag=factory_executive] run scoreboard players set @s monsters.global.arrow_modifier.final_damage 9

### Floor 2 - - - - - - - - - -

# Specimen Skeleton
execute as @s[tag=specimen_skeleton] run scoreboard players set @s monsters.global.arrow_modifier.final_damage 7

# uu_weaponsmith
#execute as @s[tag=uu_weaponsmith] run scoreboard players set @s monsters.global.arrow_modifier.final_damage 8

### Floor 3 - - - - - - - - - -



### Floor 4 - - - - - - - - - -



# 뒤틀린 몬스터 -> 데미지 2.5배로 증가
execute as @s[tag=monster.warped] run scoreboard players operation @s monsters.global.arrow_modifier.final_damage *= #25 scoreboardConstant
execute as @s[tag=monster.warped] run scoreboard players operation @s monsters.global.arrow_modifier.final_damage /= #10 scoreboardConstant

# 침잠 데미지 감소 적용
scoreboard players operation @s monsters.global.arrow_modifier.final_damage *= @s combat.sink.total_multiplier
scoreboard players operation @s monsters.global.arrow_modifier.final_damage /= #100 scoreboardConstant
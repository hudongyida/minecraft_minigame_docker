# 실행 인자: 아이템을 사용한 플레이어

execute at @s as @e[tag=monster,tag=monster.warped] run function it:tech/utils/effect/stun/init {value:100}
scoreboard players reset #SYSTEM item.purifying_salt.damage_bonus
execute at @s as @e[tag=monster,tag=monster.warped] run scoreboard players add #SYSTEM item.purifying_salt.damage_bonus 1
scoreboard players operation @s item.purifying_salt.damage_bonus = #SYSTEM item.purifying_salt.damage_bonus
scoreboard players operation @s item.purifying_salt.damage_bonus < #5 scoreboardConstant
scoreboard players operation @s item.purifying_salt.damage_bonus *= #20 scoreboardConstant
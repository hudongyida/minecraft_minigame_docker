# 실행 인자: 능력 활성화 상태에서 데미지를 받은 플레이어

data modify storage timeisgold:function_api stack append value {playerid:0, value:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid

# 반사할 데미지 값 계산
scoreboard players operation @s item.nailed_doll.damage_taken *= #25 scoreboardConstant
scoreboard players operation @s item.nailed_doll.damage_taken /= #10 scoreboardConstant
scoreboard players operation @s item.nailed_doll.damage_taken < #500 scoreboardConstant

# 보스전 데미지 감소 적용
execute if score #SYSTEM system.gamemanager.bossfight.start_check matches 1 run scoreboard players operation @s item.nailed_doll.damage_taken /= #2 scoreboardConstant

execute store result storage timeisgold:function_api stack[-1].value double 0.1 run scoreboard players get @s item.nailed_doll.damage_taken
execute as @s on attacker run function it:tech/active/nailed_doll/apply_damage with storage timeisgold:function_api stack[-1]

scoreboard players reset @s item.nailed_doll.damage_taken
data remove storage timeisgold:function_api stack[-1]
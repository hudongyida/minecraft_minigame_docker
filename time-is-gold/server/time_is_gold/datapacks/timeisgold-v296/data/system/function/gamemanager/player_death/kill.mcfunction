# 실행 인자: 사망한 플레이어

execute at @s run function it:item_abilities_on_death

data modify storage timeisgold:function_api stack append value {playeruuid:"", cause:""}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].playeruuid set from storage timeisgold:uuid_tokenizer output

function system:gamemanager/player_death/get_cause
execute if score @s system.gamemanager.player_death.cause matches 0 run function system:gamemanager/player_death/death_message/default
execute if score @s system.gamemanager.player_death.cause matches 1 run function system:gamemanager/player_death/death_message/monster
execute if score @s system.gamemanager.player_death.cause matches 2 run function system:gamemanager/player_death/death_message/boss
execute if score @s system.gamemanager.player_death.cause matches 3 run function system:gamemanager/player_death/death_message/sacrifice
tag @s remove item.scarifice.died

data remove storage timeisgold:function_api stack[-1]

# 관전자로 전환 및 플레이어 수 감소
function system:gamemanager/spectator/init

# SFX
execute as @a at @s run playsound minecraft:entity.player.death player @s ~ ~ ~ 1 1 1

scoreboard players set @s system.gamemanager.player_death.titlecount 1
title @s actionbar [{"text":"进入下一层时，你可以重生！","color":"gray"}]

function system:gamemanager/player_death/reset_trigger
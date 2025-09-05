# 실행 인자: 타이머가 0이 된 플레이어

# 부활 아이템 체크
scoreboard players set @s timeX10 0
execute at @s run function it:item_abilities_revive_player
execute unless score @s timeX10 matches ..0 run return fail

# 사망 처리
execute at @s run function system:gamemanager/player_death/kill
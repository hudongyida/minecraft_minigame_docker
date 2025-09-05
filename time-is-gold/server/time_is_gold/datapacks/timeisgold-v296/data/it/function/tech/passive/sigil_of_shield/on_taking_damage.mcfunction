# 실행 인자: 아이템 활성화 상태에서 데미지를 받은 플레이어

execute unless score @s system.time.damage_taken matches 1.. run return fail
scoreboard players set @s system.time.damage_taken 0
function it:tech/passive/sigil_of_shield/destroy
### 주의! - $(scoreboard)에 해당하는 스코어보드 변수는 admin/reset에서 반드시 먼저 정의할 것.
# ㄴ 2024/01/31자 부터 자동 할당됨. 확인하고 설명 삭제할 것.


#변수ㅣplayer, scoreboard, particle, speed, hitbox_1, hitbox_2, hitbox_3, hitfunction, wall, hitend, path, range
#particle = 파티클_이름 좌표 크기 속도 개수 플레이어 // particle function = 이름.mcfunction
#default: hitbox_1 = 0.15 , hitbox_2 = 0.7, hitbox_3 = 0.85, speed = 0.5
#hitbox_3 = hotbox_1 + hitbox_2
#hitfunction = 이름.mcfunction
#wall = 1은 벽을 통과하지 않습니다. 이외의 값은 벽을 통과합니다.
#hitend = 1은 목표에 닿을 시 raycast가 끝납니다.
#path = 파일 이름
#distance = speed * range

### 주의! - hitfunction에 tag @s remove hit 없에지 않으면 나머지 레이케스팅 hitfunction에 다 적용됩니다.

# 2023/11/30 2가지 매개변수 추가.
# playeruuid    - Raycasting 구현 기능이 필요한 무기를 사용한 플레이어의 UUID(전체 Array)
# endfunction   - Raycasting 종료 이후 광선이 도달한 위치에서 실행할 함수(함수의 이름, it:tech/$(path)/raycast/$(endfunction) 과 같은 형식으로 사용)

# 2024/01/04 매개변수 추가.
# type - 아이템의 분류에 해당하는 폴더명, it:tech/$(type)/$(path)/ 와 같은 형식으로 호출.

$scoreboard objectives add $(scoreboard) dummy
$scoreboard players set $(player) $(scoreboard) $(range)
$tag @s add $(scoreboard)_origin
$scoreboard players set isStopOnWall $(scoreboard) $(wall)
$scoreboard players set isHit $(scoreboard) $(hitend)

$execute anchored eyes positioned ^ ^ ^ run function it:tech/utils/raycast/raycast {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),wall:$(wall),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction)}

# Raycasting 종료 후 hitfunction 실행(hitfunction 내부에서 playeruuid 매개변수를 호출하지 않아도 됩니다.)
$execute as @e[tag=monster,tag=hit] at @s run function it:tech/$(type)/$(path)/raycast/$(hitfunction) {player:$(player),playeruuid:"$(playeruuid)"}
$tag @s remove $(scoreboard)_origin
$scoreboard players reset $(player) $(scoreboard)
$scoreboard objectives remove $(scoreboard)
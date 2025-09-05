# scoreboard - 함수 안에서 지정되는 스코어보드 이름
# bounce - 튕겨질 횟수
# bounceDistance - speed*2
# playeruuid - Raycasting 구현 기능이 필요한 무기를 사용한 플레이어의 UUID(전체 Array)
# endfunction - Raycasting 종료 이후 광선이 도달한 위치에서 실행할 함수(함수의 이름, it:tech/$(path)/raycast/$(endfunction) 과 같은 형식으로 사용)
# player - 기본 0, 플레이어의 UUID[0]값. uuid function을 이용할 수 있음
# particle - path에 지정된 particle.mcfunction 함수
# speed - raycast 1tick 속도 (기본 speed = 0.25)
# hitbox default: hitbox_1 = 0.15 , hitbox_2 = 0.7, hitbox_3 = 0.85
# hitfunction - 몬스터가 맞았을 때 몬스터에게 작동하는 함수
# hitend - 1은 목표에 닿을 시 raycast가 끝납니다.
# path - 파일 경로 이름
# range - 설정 거리 / 속도, 거리를 설정하는 함수

### 주의! - hitfunction에 tag @s remove hit 없에지 않으면 나머지 레이케스팅 hitfunction에 다 적용됩니다.

# 2024/01/04 매개변수 추가.
# type - 아이템의 분류에 해당하는 폴더명, it:tech/$(type)/$(path)/ 와 같은 형식으로 호출.


$scoreboard objectives add $(scoreboard) dummy
$scoreboard players set $(player) $(scoreboard) $(range)
$scoreboard players set $(player)_bounce $(scoreboard) $(bounce)
$scoreboard players set isHit $(scoreboard) $(hitend)

$execute run function it:tech/utils/raycast/bounce/raycast {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction),bounce:$(bounce),bounceDistance:$(bounceDistance)}

# Raycasting 종료 후 hitfunction 실행(hitfunction 내부에서 playeruuid 매개변수를 호출하지 않아도 됩니다.)
$execute as @e[tag=monster,tag=hit] at @s run function it:tech/$(type)/$(path)/raycast/$(hitfunction) {player:$(player),playeruuid:"$(playeruuid)"}
$scoreboard players reset $(player) $(scoreboard)
$scoreboard objectives remove $(scoreboard)
$kill @e[tag=bounce_raycast_$(player)]

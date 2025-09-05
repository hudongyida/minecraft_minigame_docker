# 기본 Raycasting을 실행하는 함수
# 실행 인자: 관련 아이템을 사용한 플레이어 데이터를 저장한 마커
# wall          - 벽 통과 여부, 1은 벽을 통과하지 않음.
# hitend        - 엔티티에 닿을 시 광선 정지 여부, 1일 경우 정지
# type          - 실행 경로 타입
# path          - 실행 경로 파일 이름
# speed         - 광선이 한 단계마다 전진하는 거리(블록 단위)
# step          - 광선이 전진하는 단계 수
# playerid      - 플레이어의 playerid 값
# initfunction  - 광선 생성 시 실행할 함수
# tickfunction  - 광선이 매 단계마다 실행할 함수
# endfunction   - 광선이 충돌한 위치에서 실행할 함수
# hitfunction   - 광선이 충돌한 몬스터에게서 실행할 함수

# 최대 거리: speed * step
# hitbox 기본값         - hitbox_1 = 0.15 , hitbox_2 = 0.7, hitbox_3 = 0.85
# hitbox_3 = hotbox_1 + hitbox_2
$execute positioned ^ ^ ^ run summon marker ^ ^ ^ {Tags:["item.utils.raycast.default.marker", "item.utils.raycast.default.init_target.$(playerid)"]}
$execute positioned ^ ^ ^ as @s run data modify entity @n[type=marker,tag=item.utils.raycast.default.init_target.$(playerid),distance=..0.5] Rotation set from entity @s Rotation

$data modify storage timeisgold:function_api stack append value {wall:$(wall), hitend:$(hitend), type:"$(type)", path:"$(path)", speed:$(speed), step:$(step),\
    selfuuid:0, hitbox_1:$(hitbox_1), hitbox_2:$(hitbox_2), hitbox_3:$(hitbox_3),\
    playerid:$(playerid), initfunction:"$(initfunction)", tickfunction:"$(tickfunction)", endfunction:"$(endfunction)", hitfunction:"$(hitfunction)"}
$execute positioned ^ ^ ^ as @n[type=marker,tag=item.utils.raycast.default.init_target.$(playerid),distance=..0.5] run function it:tech/utils/raycast/default/set_data with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]
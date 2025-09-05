# 타겟 엔티티를 3차원으로 추적하는 오브젝트를 생성하는 함수
# 실행 인자: 관련 아이템을 사용한 플레이어 데이터를 저장한 마커
# wall          - 벽 통과 여부, 1은 벽을 통과하지 않음.
# hitend        - 엔티티에 닿을 시 오브젝트 삭제 여부, 1일 경우 삭제됨
# type          - 오브젝트의 타입
# path          - 파일 이름
# speed         - 매 틱마다 전진하는 거리(블록 단위)
# force_x       - 오브젝트의 x축 방향(수직) 유도력(구간 [0, 100], 0일 경우 유도력 없이 직진, 100이면 피할 수 없음)
# force_y       - 오브젝트의 y축 방향(수평) 유도력(구간 [0, 100])
# reflection    - 오브젝트의 반사 횟수
# step          - 오브젝트의 수명(틱 단위)
# playerid      - 플레이어의 playerid 값
# targetuuid    - 추적할 타겟 엔티티의 UUID
# initfunction  - 오브젝트 생성 시 실행할 함수
# tickfunction  - 오브젝트가 틱마다 실행할 함수
# endfunction   - 오브젝트가 충돌한 위치에서 실행할 함수(함수의 이름, it:tech/$(path)/throw_item/$(endfunction) 과 같은 형식으로 사용)
# hitfunction   - 오브젝트와 충돌한 몬스터에게서 실행할 함수

# 최대 비행 거리: speed * step
# hitbox 기본값         - hitbox_1 = 0.15 , hitbox_2 = 0.7, hitbox_3 = 0.85
# hitbox_3 = hotbox_1 + hitbox_2

$execute positioned ^ ^ ^ rotated ~ ~ run summon marker ^ ^ ^ {Tags:["item.utils.tracking_object.marker", "item.utils.tracking_object.marker.init_target.$(playerid)","admin.kill_on_reset"], data:\
    {wall:$(wall), hitend:$(hitend), type:$(type), path:$(path), speed:$(speed), force_x:$(force_x), force_y:$(force_y), reflection:$(reflection), step:$(step),\
    selfuuid:0, hitbox_1:$(hitbox_1), hitbox_2:$(hitbox_2), hitbox_3:$(hitbox_3),\
    playerid:$(playerid), targetuuid:"$(targetuuid)", initfunction:$(initfunction), tickfunction:$(tickfunction), endfunction:$(endfunction), hitfunction:$(hitfunction)}}

$execute positioned ^ ^ ^ as @s run data modify entity @n[type=marker,tag=item.utils.tracking_object.marker.init_target.$(playerid),distance=..0.5] Rotation set from entity @s Rotation
$execute positioned ^ ^ ^ as @n[type=marker,tag=item.utils.tracking_object.marker.init_target.$(playerid),distance=..0.5] run function it:tech/utils/tracking_object/set_data with entity @s data
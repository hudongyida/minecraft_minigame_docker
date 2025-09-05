### 주의! - $(scoreboard)에 해당하는 스코어보드 변수는 admin/reset에서 반드시 먼저 정의할 것.

# wall          - 벽 통과 여부, 1은 벽을 통과하지 않음.
# hitend        - 엔티티에 닿을 시 아이템 정지 여부, 1일 경우 정지
# path          - 파일 이름
# speed         - 매 틱마다 전진하는 거리(블록 단위)
# step          - item display의 수명(틱 단위)
# animation     - 매 틱마다 실행할 item display 애니메이션 함수
# transformation- item display의 Transformation NBT
# playerid      - 플레이어의 id
# initfunction  - 오브젝트 생성 시 실행할 함수
# tickfunction  - 오브젝트가 틱마다 실행할 함수
# endfunction   - 오브젝트가 충돌한 위치에서 실행할 함수(함수의 이름, it:tech/$(path)/throw_item/$(endfunction) 과 같은 형식으로 사용)
# hitfunction   - 오브젝트와 충돌한 몬스터에게서 실행할 함수
# duration      - itemdisplay의 teleport_duration NBT

# 투척 거리             - speed * step
# hitbox 기본값         - hitbox_1 = 0.15 , hitbox_2 = 0.7, hitbox_3 = 0.85
# hitbox_3 = hotbox_1 + hitbox_2
# transformation 기본값 - scale: [1f, 1f, 1f] / left(right)_rotation: [0f, 0f, 0f, 1f] / transition:[0f, 0f, 0f]

# 실행 인자 -

### 주의사항!
# 1. 투척된 아이템의 경로에 있는 몬스터에게 부여되는 태그는 throw_item.hit.<마커 UUID[0]>.<마커 UUID[1]> 형태입니다.
# 2. 몬스터에게 부여되는 태그는 투척된 아이템이 월드 내에 존재하는 동안 유지됩니다.

$execute positioned ^ ^ ^ run summon marker ^ ^ ^ {Tags:[item.utils.throw_item.marker, item.utils.throw_item.marker.init_target.$(playerid)], data:\
    {wall:$(wall), hitend:$(hitend), type:$(type), path:$(path), speed:$(speed), step:$(step), hitbox_1:$(hitbox_1), hitbox_2:$(hitbox_2), hitbox_3:$(hitbox_3),\
    playerid:$(playerid), selfuuid:0, initfunction:$(initfunction), tickfunction:$(tickfunction), endfunction:$(endfunction), hitfunction:$(hitfunction), operate_function:"$(operate_function)",\
    item:$(item), transformation_scale:$(transformation_scale), transformation_left_rotation:$(transformation_left_rotation), transformation_right_rotation:$(transformation_right_rotation), transformation_transition:$(transformation_transition), duration:$(duration)}}

$execute positioned ^ ^ ^ as @s run data modify entity @n[type=marker,tag=item.utils.throw_item.marker.init_target.$(playerid),distance=..0.5] Rotation set from entity @s Rotation
$execute positioned ^ ^ ^ as @n[type=marker,tag=item.utils.throw_item.marker.init_target.$(playerid),distance=..0.5] run function it:tech/utils/throw_item/set_data with entity @s data
#$execute at @s run function it:tech/utils/throw_item/step with entity @e[type=marker,tag=throw_item.marker.$(uuid0),sort=nearest,limit=1] data
# 기본 Raycasting을 실행하는 함수
# 실행 인자: 관련 아이템을 사용한 플레이어 데이터를 저장한 마커
# wall          - 벽 통과 여부, 1은 벽을 통과하지 않음.
# hitend        - 엔티티에 닿을 시 광선 정지 여부, 1일 경우 정지
# path          - 실행 경로(네임스페이스 포함)
# speed         - 광선이 한 단계마다 전진하는 거리(블록 단위)
# step          - 광선이 전진하는 단계 수
# monsteruuid   - 몬스터의 UUID 토큰 값
# initfunction  - 광선 생성 시 실행할 함수
# tickfunction  - 광선이 매 단계마다 실행할 함수
# endfunction   - 광선이 충돌한 위치에서 실행할 함수
# hitfunction   - 광선이 충돌한 몬스터에게서 실행할 함수
# target        - 광선의 대상이 플레이어일 경우 1, 아군 몬스터일 경우 -1, 모두 해당되면 0
# system        - 광선이 감지에 의해 사용되는 경우, 예를 들어 real_time_projectile_interceptor에 막히지 않아야 하는 경우 1, 아니면 0

# 최대 거리: speed * step
# hitbox 기본값         - hitbox_1 = 0.15 , hitbox_2 = 0.7, hitbox_3 = 0.85
# hitbox_3 = hotbox_1 + hitbox_2

$execute positioned ^ ^ ^ run summon marker ^ ^ ^ {Tags:["monsters.utils.raycast.default.marker", "monsters.utils.raycast.default.init_target.$(monsteruuid)"]}
$execute positioned ^ ^ ^ as @s run data modify entity @n[type=marker,tag=monsters.utils.raycast.default.init_target.$(monsteruuid),distance=..0.5] Rotation set from entity @s Rotation

#execute as @s run tellraw @a {"nbt":"Rotation",entity:"@s"}
#$execute as $(monsteruuid) run tellraw @a {"nbt":"Rotation",entity:"@s"}

$data modify storage timeisgold:function_api stack append value {wall:$(wall), hitend:$(hitend), path:"$(path)", speed:$(speed), step:$(step), target:$(target),\
    selfuuid:0, hitbox_1:$(hitbox_1), hitbox_2:$(hitbox_2), hitbox_3:$(hitbox_3),\
    monsteruuid:"$(monsteruuid)", initfunction:$(initfunction), tickfunction:$(tickfunction), endfunction:$(endfunction), hitfunction:$(hitfunction), system:$(system)}
$execute positioned ^ ^ ^ as @n[type=marker,tag=monsters.utils.raycast.default.init_target.$(monsteruuid),distance=..0.5] run function monsters:tech/global/utils/raycast/default/set_data with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]
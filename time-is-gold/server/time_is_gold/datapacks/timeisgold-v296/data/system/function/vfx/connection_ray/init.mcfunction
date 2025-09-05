# (원점) -> (목표) 방향으로 광선 이펙트를 생성하는 함수.

# $(originuuid)     - 원점 엔티티 UUID Token
# $(targetuuid)     - 목표 엔티티 UUID Token
# $(speed)          - 광선이 틱당 전진하는 거리
# $(step)           - 광선이 존재하는 최대 틱 수
# $(tickfunction)   - 광선의 위치에서 실행할 효과 함수

$execute at $(originuuid) run summon marker ~ ~ ~ {Tags:["system.vfx.connection_ray.marker","system.vfx.connection_ray.marker.init_target","admin.kill_on_reset"],data:{originuuid:"$(originuuid)", targetuuid:"$(targetuuid)", selfuuid:"", speed:$(speed), step:$(step), tickfunction:"$(tickfunction)"}}
execute as @n[type=marker,tag=system.vfx.connection_ray.marker.init_target] at @s run function system:vfx/connection_ray/set_data with entity @s data
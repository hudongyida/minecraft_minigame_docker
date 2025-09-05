# 원형으로 퍼져나가는 falling_block 파동 효과를 생성하는 함수.
# $(step)       - 매 틱마다 증가할 반경
# $(tick)       - 파동이 유지될 틱 수
# $(function)   - 파동이 생성되는 위치에서 실행할 효과 함수

$execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:[system.vfx.block_wave.marker, system.vfx.block_wave.marker.uninitialized], data:{step:$(step), tick:$(tick), selfuuid:"", radius:0d, angle:0d, function:"$(function)"}}
$execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=marker,tag=system.vfx.block_wave.marker.uninitialized,dx=0] run function system:vfx/block_wave/set_data {tick:$(tick)}
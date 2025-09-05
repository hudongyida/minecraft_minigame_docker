# 실행 인자: @e[type=marker,tag=bosses.the_shaman.pattern3.chalice.type4.marker]
# $(step)   - 1틱당 증가할 반경 블록 수
# $(tick)   - 충격파 지속 시간
# 충격파 최대 반경 = step * tick

$execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:[bosses.the_shaman.pattern3.chalice.type4.wave.center, bosses.the_shaman.pattern3.chalice.type4.wave.center.uninitialized], data:{step:$(step), tick:$(tick), bossuuid:"$(bossuuid)", selfuuid:"", radius:0d, angle:0d, inner_circle:0d, outer_circle:0d, y_pos:0d}}
$execute positioned ~ ~ ~ as @n[type=marker,tag=bosses.the_shaman.pattern3.chalice.type4.wave.center.uninitialized,distance=..0.5] run function bosses:tech/the_shaman/pattern3/type4/wave/set_data {tick:$(tick)}
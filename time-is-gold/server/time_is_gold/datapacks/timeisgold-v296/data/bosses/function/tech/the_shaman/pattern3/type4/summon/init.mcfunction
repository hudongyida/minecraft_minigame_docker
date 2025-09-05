# $(bossuuid)   - 패턴을 사용하는 제사장 보스 UUID Token

$execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["bosses.the_shaman.pattern3.chalice.marker","bosses.the_shaman.pattern3.chalice.type4.marker","bosses.the_shaman.pattern3.chalice.type4.marker.uninitialized","admin.kill_on_reset"],data:{bossuuid:"$(bossuuid)", selfuuid:""}}
execute positioned ~ ~ ~ as @n[type=marker,tag=bosses.the_shaman.pattern3.chalice.type4.marker.uninitialized,distance=..0.5] run function bosses:tech/the_shaman/pattern3/type4/summon/set_data
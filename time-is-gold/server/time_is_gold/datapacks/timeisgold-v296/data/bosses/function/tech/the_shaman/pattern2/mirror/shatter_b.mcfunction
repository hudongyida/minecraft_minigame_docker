# 실행 인자: 거울 마커 엔티티
# 실행 조건: 플레이어가 일정 시간 바라보는 것 이외 다른 모든 상황

#$execute as @a[predicate=system:player,distance=..3] run function monsters:tech/global/utils/monster_damage/magic/init {value:40, monsteruuid:"$(bossuuid)"}
#execute as @a[predicate=system:player,distance=..3] run function it:tech/utils/effect/sink/init {value:5}

# SFX
execute at @s run playsound minecraft:block.glass.break block @a ~ ~ ~ 4 0.5 1
execute at @s run playsound block.sculk_sensor.clicking_stop block @a ~ ~ ~ 4 0.5 1

# VFX
execute at @s run particle item{item:"ender_eye"} ~ ~ ~ 0.15 0.15 0.15 0.1 25 force
execute at @s positioned ~ ~-0.5 ~ run function system:vfx/expand_circle/init {range:3, step:5, R:0.2, G:0.05, B:0.2}

$tag @a[tag=bosses.the_shaman.pattern2.mirror.watching.$(selfuuid)] remove bosses.the_shaman.pattern2.mirror.watching.$(selfuuid)
function bosses:tech/the_shaman/pattern2/mirror/macro/kill_display with entity @s data
kill @s
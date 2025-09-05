# 실행 인자: 분신에 타고 있는 마커 엔티티
# $(bossuuid)   - 분신을 소환한 보스 본체 UUID Token

$scoreboard players remove $(bossuuid) bosses.the_shaman.pattern6.clone_count 1

# SFX
execute at @s run playsound minecraft:block.glass.break block @a ~ ~ ~ 4 0.5 1
execute at @s run playsound block.sculk_sensor.clicking_stop block @a ~ ~ ~ 4 0.5 1
execute at @s run playsound entity.illusioner.mirror_move hostile @a ~ ~ ~ 2 1 1

# VFX
execute as @s on vehicle at @s run particle item{item:"ender_eye"} ~ ~1 ~ 0.15 0.15 0.15 0.1 25 force
execute as @s on vehicle at @s positioned ~ ~ ~ run function system:vfx/expand_circle/init {range:3, step:5, R:1.0, G:1.0, B:1.0}

execute as @s on vehicle at @s run tp @s ~ -256 ~
execute as @s on vehicle run kill @s
kill @s
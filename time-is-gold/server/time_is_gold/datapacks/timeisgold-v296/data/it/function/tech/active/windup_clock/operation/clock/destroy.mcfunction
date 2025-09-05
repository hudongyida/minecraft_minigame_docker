# 실행 인자: 태엽 관리자 마커

# SFX
execute at @s run playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1 0.5

# VFX
execute at @s run particle item{item:"minecraft:clock"} ~ ~1 ~ 0.2 0.2 0.2 0.01 16 force

$kill $(displayuuid)
kill @s
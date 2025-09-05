# $(playeruuid) - 태엽 장치로 텔레포트할 플레이어의 UUID Token

# SFX
execute at @s run playsound minecraft:entity.illusioner.mirror_move hostile @s ~ ~ ~ 1 1

$tp $(playeruuid) @n[type=marker,tag=item.windup_clock.marker.manager.$(playeruuid)]
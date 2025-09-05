# $(playerid)   - Contrary_wind 무기를 사용한 플레이어의 playerid 스코어보드 값

# Raycasting 종료 후 광선이 충돌한 블록 주변에 마커 배치
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~1 ~1 #it:air run summon marker ~1 ~1 ~1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~1 ~0 #it:air run summon marker ~1 ~1 ~0 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~1 ~-1 #it:air run summon marker ~1 ~1 ~-1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~1 ~1 #it:air run summon marker ~0 ~1 ~1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~1 ~0 #it:air run summon marker ~0 ~1 ~0 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~1 ~-1 #it:air run summon marker ~0 ~1 ~-1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~1 ~1 #it:air run summon marker ~-1 ~1 ~1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~1 ~0 #it:air run summon marker ~-1 ~1 ~0 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~1 ~-1 #it:air run summon marker ~-1 ~1 ~-1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}

$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~0 ~1 #it:air run summon marker ~1 ~0 ~1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~0 ~0 #it:air run summon marker ~1 ~0 ~0 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~0 ~-1 #it:air run summon marker ~1 ~0 ~-1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~0 ~1 #it:air run summon marker ~0 ~0 ~1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~0 ~0 #it:air run summon marker ~0 ~0 ~0 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~0 ~-1 #it:air run summon marker ~0 ~0 ~-1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~0 ~1 #it:air run summon marker ~-1 ~0 ~1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~0 ~0 #it:air run summon marker ~-1 ~0 ~0 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~0 ~-1 #it:air run summon marker ~-1 ~0 ~-1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}

$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~-1 ~1 #it:air run summon marker ~1 ~-1 ~1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~-1 ~0 #it:air run summon marker ~1 ~-1 ~0 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~-1 ~-1 #it:air run summon marker ~1 ~-1 ~-1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~-1 ~1 #it:air run summon marker ~0 ~-1 ~1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~-1 ~0 #it:air run summon marker ~0 ~-1 ~0 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~-1 ~-1 #it:air run summon marker ~0 ~-1 ~-1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~-1 ~1 #it:air run summon marker ~-1 ~-1 ~1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~-1 ~0 #it:air run summon marker ~-1 ~-1 ~0 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~-1 ~-1 #it:air run summon marker ~-1 ~-1 ~-1 {Tags:[item.contrary_wind.marker.pos.$(playerid)]}

# 광선 도달 위치에서 가장 가까운 마커만 남기고 전부 삭제, dest 태그 부여
$execute positioned ~ ~ ~ run tag @e[type=marker,tag=item.contrary_wind.marker.pos.$(playerid),sort=nearest,limit=1] add item.contrary_wind.marker.pos.$(playerid).dest
$kill @e[type=marker,tag=item.contrary_wind.marker.pos.$(playerid),tag=!item.contrary_wind.marker.pos.$(playerid).dest]

# dest 마커 회전
$execute rotated as @a[scores={playerid=$(playerid)},limit=1] run rotate @n[type=marker,tag=item.contrary_wind.marker.pos.$(playerid)] ~ ~

# dest 마커가 천장에 위치할 때 tp 처리
$execute as @n[type=marker,tag=item.contrary_wind.marker.pos.$(playerid).dest] at @s if block ~ ~ ~ #it:air if block ~ ~-1 ~ #it:air unless block ~ ~1 ~ #it:air run function it:tech/passive/contrary_wind/raycast/teleport_ceil {playerid:$(playerid)}

# dest 마커가 tp 가능한 곳에 있을 때 처리
$execute as @n[type=marker,tag=item.contrary_wind.marker.pos.$(playerid).dest] at @s if block ~ ~ ~ #it:air if block ~ ~1 ~ #it:air run function it:tech/passive/contrary_wind/raycast/teleport_default {playerid:$(playerid)}

# dest 마커가 tp 불가능한 곳에 있을 때 처리
$execute as @n[type=marker,tag=item.contrary_wind.marker.pos.$(playerid).dest] if entity @s run function it:tech/passive/contrary_wind/raycast/teleport_fail {playerid:$(playerid)}
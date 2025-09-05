# 실행 인자: 컷씬 중간 보스 분신

execute at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["bosses.the_shaman.cutscene.marker.direction"]}
execute at @s anchored eyes positioned ^ ^ ^ rotated as @s run rotate @n[type=marker,tag=bosses.the_shaman.cutscene.marker.direction,distance=..0.5] ~ -90
execute at @s anchored eyes positioned ^ ^ ^ as @n[type=marker,tag=bosses.the_shaman.cutscene.marker.direction,distance=..0.5] at @s run function monsters:tech/global/utils/tracking_object/init with storage timeisgold:function_api stack[-1]
execute at @s anchored eyes positioned ^ ^ ^ run kill @n[type=marker,tag=bosses.the_shaman.cutscene.marker.direction,distance=..0.5]
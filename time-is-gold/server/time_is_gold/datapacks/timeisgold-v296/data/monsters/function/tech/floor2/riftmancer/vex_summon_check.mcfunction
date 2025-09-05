# 실행 인자: @e[type=vex]

execute unless function monsters:tech/floor2/riftmancer/pulse_orb/origin run return fail

execute if function monsters:tech/floor2/riftmancer/summon_count_check run return run function monsters:tech/global/utils/misc/void_kill

execute at @s run function monsters:tech/floor2/riftmancer/pulse_orb/tracking_object_call_vex
function monsters:tech/global/utils/misc/void_kill
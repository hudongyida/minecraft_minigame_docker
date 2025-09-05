# 실행 인자: @e[type=evoker_fangs]

execute unless function monsters:tech/floor2/riftmancer/pulse_orb/origin run return fail

execute at @s run function monsters:tech/floor2/riftmancer/pulse_orb/tracking_object_call_fangs
function monsters:tech/global/utils/misc/void_kill
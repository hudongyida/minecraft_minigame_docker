# 스탯 계산 후 전투 관련 attribute를 적용하는 함수.
# multiplier 스탯의 경우 100만큼 빼고 적용해야 함 (+100 = +100%)

data modify storage timeisgold:function_api stack append value {damage_delta:0, damage_multiplier:0, attack_speed_delta:0, attack_speed_multiplier:0, attack_range_delta:0, attack_range_multiplier:0, safe_fall_distance_delta:0, safe_fall_distance_multiplier:0, sink_total_multiplier:100, speed_delta:0, speed_multiplier:0, knockback_resistance:0, luck:0, gravity:0}

function system:combat/stat_manager/attributes/attack_damage
function system:combat/stat_manager/attributes/attack_speed
function system:combat/stat_manager/attributes/attack_range
function system:combat/stat_manager/attributes/safe_fall_distance
function system:combat/stat_manager/attributes/speed
function system:combat/stat_manager/attributes/knockback_resistance
function system:combat/stat_manager/attributes/sink
function system:combat/stat_manager/attributes/luck
function system:combat/stat_manager/attributes/gravity

#function system:combat/stat_manager/attributes/apply
data remove storage timeisgold:function_api stack[-1]
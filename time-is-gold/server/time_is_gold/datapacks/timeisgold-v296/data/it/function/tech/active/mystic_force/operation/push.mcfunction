# 실행 인자: 아이템 능력이 활성화된 플레이어

scoreboard players add @s item.mystic_force.step_count 1

execute if score @s item.mystic_force.step_count matches 1 run function it:tech/utils/entity/on_sight/init {distance:3, cos:8000, tag:item.mystic_force.push_target}
execute if score @s item.mystic_force.step_count matches 2 run function it:tech/utils/entity/on_sight/init {distance:6, cos:8500, tag:item.mystic_force.push_target}
execute if score @s item.mystic_force.step_count matches 3 run function it:tech/utils/entity/on_sight/init {distance:9, cos:9000, tag:item.mystic_force.push_target}
execute if score @s item.mystic_force.step_count matches 4 run function it:tech/utils/entity/on_sight/init {distance:12, cos:9200, tag:item.mystic_force.push_target}
execute if score @s item.mystic_force.step_count matches 5 run function it:tech/utils/entity/on_sight/init {distance:15, cos:9400, tag:item.mystic_force.push_target}
execute if score @s item.mystic_force.step_count matches 6 run function it:tech/utils/entity/on_sight/init {distance:18, cos:9600, tag:item.mystic_force.push_target}
execute if score @s item.mystic_force.step_count matches 7 run function it:tech/utils/entity/on_sight/init {distance:21, cos:9800, tag:item.mystic_force.push_target}
execute if score @s item.mystic_force.step_count matches 8 run function it:tech/utils/entity/on_sight/init {distance:24, cos:9800, tag:item.mystic_force.push_target}
execute if score @s item.mystic_force.step_count matches 9 run function it:tech/utils/entity/on_sight/init {distance:27, cos:9800, tag:item.mystic_force.push_target}
execute if score @s item.mystic_force.step_count matches 10 run function it:tech/utils/entity/on_sight/init {distance:30, cos:9800, tag:item.mystic_force.push_target}

function system:math/vectors/looking_direction/init {storage_x:item.mystic_force.vector.x, storage_y:item.mystic_force.vector.y, storage_z:item.mystic_force.vector.z}

scoreboard players operation @e[tag=item.mystic_force.push_target] item.mystic_force.vector.x = @s item.mystic_force.vector.x
scoreboard players operation @e[tag=item.mystic_force.push_target] item.mystic_force.vector.y = @s item.mystic_force.vector.y
scoreboard players operation @e[tag=item.mystic_force.push_target] item.mystic_force.vector.z = @s item.mystic_force.vector.z
execute as @e[tag=item.mystic_force.push_target] run function it:tech/active/mystic_force/operation/set_motion

# SFX
scoreboard players operation @s item.mystic_force.sfx.tick = @s item.mystic_force.sfx.max_tick
scoreboard players operation @s item.mystic_force.sfx.tick -= @s item.mystic_force.tick
execute at @s run function system:sfx/dynamic_pitch/init {value:item.mystic_force.sfx.tick, max:item.mystic_force.sfx.max_tick, function:"it:tech/active/mystic_force/operation/sfx"}

# VFX
execute if score @s item.mystic_force.step_count matches 1 at @s positioned ^ ^ ^3 run function it:tech/active/mystic_force/operation/vfx
execute if score @s item.mystic_force.step_count matches 2 at @s positioned ^ ^ ^6 run function it:tech/active/mystic_force/operation/vfx
execute if score @s item.mystic_force.step_count matches 3 at @s positioned ^ ^ ^9 run function it:tech/active/mystic_force/operation/vfx
execute if score @s item.mystic_force.step_count matches 4 at @s positioned ^ ^ ^12 run function it:tech/active/mystic_force/operation/vfx
execute if score @s item.mystic_force.step_count matches 5 at @s positioned ^ ^ ^15 run function it:tech/active/mystic_force/operation/vfx
execute if score @s item.mystic_force.step_count matches 6 at @s positioned ^ ^ ^18 run function it:tech/active/mystic_force/operation/vfx
execute if score @s item.mystic_force.step_count matches 7 at @s positioned ^ ^ ^21 run function it:tech/active/mystic_force/operation/vfx
execute if score @s item.mystic_force.step_count matches 8 at @s positioned ^ ^ ^24 run function it:tech/active/mystic_force/operation/vfx
execute if score @s item.mystic_force.step_count matches 9 at @s positioned ^ ^ ^27 run function it:tech/active/mystic_force/operation/vfx
execute if score @s item.mystic_force.step_count matches 10 at @s positioned ^ ^ ^30 run function it:tech/active/mystic_force/operation/vfx
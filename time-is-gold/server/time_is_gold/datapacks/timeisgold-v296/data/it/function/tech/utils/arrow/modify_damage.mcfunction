# 실행 인자: 플레이어가 발사한 모든 화살
# $(playeruuid) - 화살을 발사한 플레이어의 UUID Token

# 화살 데미지 계산
function system:math/vectors/velocity/init {x:combat.arrow_modifier.motion_x, y:combat.arrow_modifier.motion_y, z:combat.arrow_modifier.motion_z}
function system:math/vectors/get_norm/init {x:combat.arrow_modifier.motion_x, y:combat.arrow_modifier.motion_y, z:combat.arrow_modifier.motion_z, output:combat.arrow_modifier.velocity}

execute store result score @s combat.arrow_modifier.damage_value run data get entity @s damage 10.0
scoreboard players operation @s combat.arrow_modifier.original_damage = @s combat.arrow_modifier.velocity
scoreboard players operation @s combat.arrow_modifier.original_damage *= @s combat.arrow_modifier.damage_value
scoreboard players operation @s combat.arrow_modifier.final_damage = @s combat.arrow_modifier.original_damage

# 원거리 데미지 스탯 적용
$scoreboard players operation @s combat.arrow_modifier.temp = $(playeruuid) combat.ranged.damage_deltaX10
scoreboard players operation @s combat.arrow_modifier.temp *= #100 scoreboardConstant
scoreboard players operation @s combat.arrow_modifier.final_damage += @s combat.arrow_modifier.temp

$scoreboard players operation @s combat.arrow_modifier.final_damage *= $(playeruuid) combat.ranged.damage_multiplier
scoreboard players operation @s combat.arrow_modifier.final_damage /= #100 scoreboardConstant

# 스탯 적용 후 damage NBT 값 계산
scoreboard players operation @s combat.arrow_modifier.temp = @s combat.arrow_modifier.final_damage
scoreboard players operation @s combat.arrow_modifier.temp *= #100 scoreboardConstant
scoreboard players operation @s combat.arrow_modifier.temp /= @s combat.arrow_modifier.original_damage
scoreboard players operation @s combat.arrow_modifier.damage_value *= @s combat.arrow_modifier.temp
scoreboard players operation @s combat.arrow_modifier.damage_value /= #100 scoreboardConstant

# Debug
#execute as @s run tellraw @a [{"text":"Original Damage: "},{"score":{"name":"@s","objective":"combat.arrow_modifier.original_damage"}}," | ",{"text":"Final Damage: "},{"score":{"name":"@s","objective":"combat.arrow_modifier.final_damage"}}," | ","damage: ",{"score":{"name":"@s","objective":"combat.arrow_modifier.damage_value"}}]

execute if score @s combat.arrow_modifier.damage_value matches ..1 run scoreboard players set @s combat.arrow_modifier.damage_value 1
execute store result entity @s damage double 0.1 run scoreboard players get @s combat.arrow_modifier.damage_value
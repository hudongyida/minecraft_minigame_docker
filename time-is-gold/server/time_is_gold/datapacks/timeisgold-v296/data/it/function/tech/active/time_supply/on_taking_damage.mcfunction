# 시간 변환 능력이 사용 불가능할 경우 실패
execute unless function it:tech/utils/ability/time_converting_check run return fail

function it:tech/utils/detect/in_inventory {item:time_supply, output:item.time_supply.damage_taken}

scoreboard players operation @s[tag=item.time_supply.damage_taken] item.time_supply.damage_temp = @s system.time.damage_taken
scoreboard players operation @s[tag=item.time_supply.damage_taken] item.time_supply.damage_temp /= #4 scoreboardConstant
scoreboard players operation @s[tag=item.time_supply.damage_taken] item.time_supply.damage_stored += @s item.time_supply.damage_temp

execute if score @s[tag=item.time_supply.damage_taken] item.time_supply.damage_stored matches 1000.. run scoreboard players set @s item.time_supply.damage_stored 1000
tag @s remove item.time_supply.damage_taken
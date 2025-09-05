# $(playerid)   - 플레이어의 playerid 스코어보드 값
# $(entityid)   - 공격받은 몬스터의 entityid 스코어보드 값

data modify storage timeisgold:function_api stack append value {x1:0, y1:0, z1:0, x2:0, y2:0, z2:0, output:item.assassin_dagger.looking_direction.cos_theta}
execute as @s on attacker run function it:tech/melee/assassin_dagger/store_vector {x:x2, y:y2, z:z2}
function it:tech/melee/assassin_dagger/store_vector {x:x1, y:y1, z:z1}
function system:math/vectors/inner_prod/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute as @s if score @s item.assassin_dagger.looking_direction.cos_theta matches 0.. run function it:tech/melee/assassin_dagger/apply_damage
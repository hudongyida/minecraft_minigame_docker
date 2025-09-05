# 실행 인자: 플레이어가 발사한 화살

execute unless predicate it:20pc run return fail
execute as @s on origin run function it:tech/passive/tiny_rocket/get_count
execute as @s on origin unless score @s item.tiny_rocket.gunpowder_count matches 1.. run return fail

data modify storage timeisgold:function_api stack append value {selfuuid:"", playeruuidlist:[]}

function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].selfuuid set from storage timeisgold:uuid_tokenizer output
data modify storage timeisgold:function_api stack[-1].playeruuidlist set from entity @s Owner

execute at @s run function it:tech/passive/tiny_rocket/player_arrow/summon with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
execute as @s on origin run function it:tech/passive/tiny_rocket/cost
kill @s
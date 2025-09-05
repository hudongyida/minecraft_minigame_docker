# 실행 인자: 플레이어가 발사한 모든 화살

execute as @s unless function it:tech/utils/arrow/owner_check run return run tag @s add system.combat.player_arrow.damage_checked

data modify storage timeisgold:function_api stack append value {playeruuid:"", bow:""}

execute as @s on origin as @s[type=player] run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].playeruuid set from storage timeisgold:uuid_tokenizer output
data modify storage timeisgold:function_api stack[-1].bow set from entity @s weapon.components.minecraft:custom_data.item

function it:tech/utils/arrow/tag_arrows with storage timeisgold:function_api stack[-1]
function it:tech/utils/arrow/modify_damage with storage timeisgold:function_api stack[-1]

execute at @s run function it:item_abilities_on_fired_arrow

tag @s add system.combat.player_arrow.damage_checked
data remove storage timeisgold:function_api stack[-1]
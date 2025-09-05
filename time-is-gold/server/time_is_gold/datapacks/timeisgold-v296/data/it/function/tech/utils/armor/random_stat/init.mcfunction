data modify storage timeisgold:function_api stack append value {playeruuid:""}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].playeruuid set from storage timeisgold:uuid_tokenizer output

execute if items entity @s armor.head *[custom_data~{armor:{uninitialized:true}}] run function it:tech/utils/armor/random_stat/operation/helmet with storage timeisgold:function_api stack[-1]
execute if items entity @s armor.chest *[custom_data~{armor:{uninitialized:true}}] run function it:tech/utils/armor/random_stat/operation/chestplate with storage timeisgold:function_api stack[-1]
execute if items entity @s armor.legs *[custom_data~{armor:{uninitialized:true}}] run function it:tech/utils/armor/random_stat/operation/leggings with storage timeisgold:function_api stack[-1]
execute if items entity @s armor.feet *[custom_data~{armor:{uninitialized:true}}] run function it:tech/utils/armor/random_stat/operation/boots with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
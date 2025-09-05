# 실행 인자: 아이템 능력이 활성화된 플레이어

data modify storage timeisgold:function_api stack append value {playeruuidlist:[]}
data modify storage timeisgold:function_api stack[-1].playeruuidlist set from entity @s UUID
execute at @s run function it:tech/passive/hedgehog_plushie/operation/summon with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]
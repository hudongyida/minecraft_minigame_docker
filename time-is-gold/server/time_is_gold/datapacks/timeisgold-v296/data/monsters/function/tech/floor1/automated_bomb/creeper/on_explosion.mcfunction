# 실행 인자: 자동 폭탄 인형 위에 타고 있는 death_check 마커

data modify storage timeisgold:function_api stack append value {monsteruuid:""}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:uuid_tokenizer output
execute at @s run function monsters:tech/floor1/automated_bomb/creeper/apply_damage with storage timeisgold:function_api stack[-1]
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
data remove storage timeisgold:function_api stack[-1]

execute as @s at @s run kill @n[type=item_display,tag=automated_bomb.windup,distance=..1]
kill @s
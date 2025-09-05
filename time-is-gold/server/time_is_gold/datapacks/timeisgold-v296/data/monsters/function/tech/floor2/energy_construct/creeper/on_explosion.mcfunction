# 실행 인자: 자동 폭탄 인형 위에 타고 있는 death_check 마커

data modify storage timeisgold:function_api stack append value {monsteruuid:""}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:uuid_tokenizer output
execute positioned ~ ~-1 ~ run function monsters:tech/floor2/energy_construct/creeper/apply_damage with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# SFX
execute positioned ~ ~-2 ~ run playsound entity.zombie_villager.cure hostile @a ~ ~ ~ 2 1 0

# VFX
execute positioned ~ ~-1 ~ run function system:vfx/expand_circle/init {R:0, G:0.25, B:0.66, range:5, step:5}

kill @s
# 실행 인자: 디버그 아이템을 사용한 플레이어

scoreboard objectives add debug.hit_check_is_sans.loop_iterator dummy
scoreboard objectives add debug.hit_check_is_sans.bitsum dummy
scoreboard players set #DEBUG debug.hit_check_is_sans.bitsum 1
scoreboard players set @s debug.hit_check_is_sans.bitsum 0

data modify storage timeisgold:function_api stack append value {index:0}
execute as @s at @s run function it:tech/debug/hit_check_is_sans/collect_bits with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute as @s run tellraw @s [{"text":"Bitset: [LSB] "}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit0"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit1"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit2"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit3"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit4"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit5"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit6"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit7"}}, {"text":" "}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit8"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit9"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit10"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit11"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit12"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit13"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit14"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit15"}},{"text":" "}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit16"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit17"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit18"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit19"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit20"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit21"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit22"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit23"}}, {"text":" "}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit24"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit25"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit26"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit27"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit28"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit29"}}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bit30"}}, {"text": " [MSB]"}]
execute as @s run tellraw @s [{"text":"Bitsum: "}, {"score": {"name": "@s", "objective": "debug.hit_check_is_sans.bitsum"}}]

scoreboard objectives remove debug.hit_check_is_sans.loop_iterator
scoreboard objectives remove debug.hit_check_is_sans.bitsum

scoreboard objectives remove debug.hit_check_is_sans.bit0
scoreboard objectives remove debug.hit_check_is_sans.bit1
scoreboard objectives remove debug.hit_check_is_sans.bit2
scoreboard objectives remove debug.hit_check_is_sans.bit3
scoreboard objectives remove debug.hit_check_is_sans.bit4
scoreboard objectives remove debug.hit_check_is_sans.bit5
scoreboard objectives remove debug.hit_check_is_sans.bit6
scoreboard objectives remove debug.hit_check_is_sans.bit7
scoreboard objectives remove debug.hit_check_is_sans.bit8
scoreboard objectives remove debug.hit_check_is_sans.bit9
scoreboard objectives remove debug.hit_check_is_sans.bit10
scoreboard objectives remove debug.hit_check_is_sans.bit11
scoreboard objectives remove debug.hit_check_is_sans.bit12
scoreboard objectives remove debug.hit_check_is_sans.bit13
scoreboard objectives remove debug.hit_check_is_sans.bit14
scoreboard objectives remove debug.hit_check_is_sans.bit15
scoreboard objectives remove debug.hit_check_is_sans.bit16
scoreboard objectives remove debug.hit_check_is_sans.bit17
scoreboard objectives remove debug.hit_check_is_sans.bit18
scoreboard objectives remove debug.hit_check_is_sans.bit19
scoreboard objectives remove debug.hit_check_is_sans.bit20
scoreboard objectives remove debug.hit_check_is_sans.bit21
scoreboard objectives remove debug.hit_check_is_sans.bit22
scoreboard objectives remove debug.hit_check_is_sans.bit23
scoreboard objectives remove debug.hit_check_is_sans.bit24
scoreboard objectives remove debug.hit_check_is_sans.bit25
scoreboard objectives remove debug.hit_check_is_sans.bit26
scoreboard objectives remove debug.hit_check_is_sans.bit27
scoreboard objectives remove debug.hit_check_is_sans.bit28
scoreboard objectives remove debug.hit_check_is_sans.bit29
scoreboard objectives remove debug.hit_check_is_sans.bit30
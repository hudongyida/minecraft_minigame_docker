# 실행 인자: 받은 데미지를 표시할 엔티티
# $(prefix) - 디스플레이 숫자 앞에 붙일 문자열
# $(suffix) - 디스플레이 숫자 뒤에 붙일 문자열
# $(color)  - 디스플레이 색상

$data modify storage timeisgold:function_api stack append value {randx:0, randy:0, randz:0, integer:0, decimal:0, prefix:"$(prefix)", suffix:"$(suffix)", color:"$(color)"}

execute if score @s system.damage_indicator.hp_delta matches ..-1 run scoreboard players operation @s system.damage_indicator.hp_delta *= -1 scoreboardConstant
scoreboard players operation @s system.damage_indicator.hp_integer = @s system.damage_indicator.hp_delta
scoreboard players operation @s system.damage_indicator.hp_integer /= #10 scoreboardConstant
scoreboard players operation @s system.damage_indicator.hp_decimal = @s system.damage_indicator.hp_delta
scoreboard players operation @s system.damage_indicator.hp_decimal %= #10 scoreboardConstant

execute store result storage timeisgold:function_api stack[-1].randx double 0.01 run random value -50..50
execute store result storage timeisgold:function_api stack[-1].randy double 0.01 run random value -50..50
execute store result storage timeisgold:function_api stack[-1].randz double 0.01 run random value -50..50
execute store result storage timeisgold:function_api stack[-1].integer int 1 run scoreboard players get @s system.damage_indicator.hp_integer
execute store result storage timeisgold:function_api stack[-1].decimal int 1 run scoreboard players get @s system.damage_indicator.hp_decimal

execute as @s at @s positioned ~ ~1 ~ run function system:combat/damage_indicator/summon_text with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
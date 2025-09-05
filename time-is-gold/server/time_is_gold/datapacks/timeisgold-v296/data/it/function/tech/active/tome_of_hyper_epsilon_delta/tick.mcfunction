# 실행 인자: @e[tag=monster,scores={item.tome_of_hyper_epsilon_delta.tick=1..}]

# VFX
execute at @s positioned ~ ~ ~ run particle dust{color:[0.33,0.0,0.05],scale:2} ~ ~1 ~ 0.3 0.5 0.3 0.1 1
execute at @s positioned ~ ~ ~ run particle damage_indicator ~ ~ ~ 0.25 0.5 0.25 0 1

scoreboard players remove @s item.tome_of_hyper_epsilon_delta.tick 1
execute if score @s item.tome_of_hyper_epsilon_delta.tick matches 0 run function it:tech/active/tome_of_hyper_epsilon_delta/reset_effect
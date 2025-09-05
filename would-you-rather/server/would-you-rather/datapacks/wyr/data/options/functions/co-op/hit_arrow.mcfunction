execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_co-op] run scoreboard players remove $number skip_coop 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_co-op] run function options:co-op/add_co-op
tellraw @s [{"text":"如果开启此选项, 则表示在每个人都选择相同的场景, 并且该组只能一起成功或失败的情况下将被跳过.","color":"red"}]
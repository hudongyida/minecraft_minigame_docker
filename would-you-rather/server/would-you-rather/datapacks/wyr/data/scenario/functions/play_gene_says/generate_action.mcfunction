kill @e[type=item,tag=pgs_die_between_rounds]
tag @a remove pgs_failed
kill @e[type=area_effect_cloud,tag=pgs_action]
kill @e[type=area_effect_cloud,tag=pgs_location]
kill @e[type=area_effect_cloud,tag=pgs_sound_location]
scoreboard players set $mod random 20
function random:random
scoreboard players operation $action pgs_timer = $rand random
execute if score $action pgs_timer matches 0 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"跳起蹲下!","color":"green"}]'}
execute if score $action pgs_timer matches 1 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action","pgs_has_location"],CustomName:'[{"text":"坐沙发!","color":"green"}]'}
execute if score $action pgs_timer matches 1 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_location"],CustomName:'[{"text":"客厅","color":"aqua"}]'}
execute if score $action pgs_timer matches 2 run summon area_effect_cloud 27025 66 -17 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 2 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"进厨房!","color":"green"}]'}
execute if score $action pgs_timer matches 3 run summon area_effect_cloud 27021 66 -14 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 3 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action","pgs_has_location"],CustomName:'[{"text":"上楼去!","color":"green"}]'}
execute if score $action pgs_timer matches 3 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_location"],CustomName:'[{"text":"厨房","color":"aqua"}]'}
execute if score $action pgs_timer matches 4 run summon area_effect_cloud 27038 66 -18 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 4 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"去洗手间!","color":"green"}]'}
execute if score $action pgs_timer matches 5 run summon area_effect_cloud 27033 66 -25 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 5 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"去前门!","color":"green"}]'}
execute if score $action pgs_timer matches 6 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"到处跑!","color":"green"}]'}
execute if score $action pgs_timer matches 7 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"蹲下!","color":"green"}]'}
execute if score $action pgs_timer matches 8 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"冻住!","color":"green"}]'}
execute if score $action pgs_timer matches 9 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"看一幅画!","color":"green"}]'}
execute if score $action pgs_timer matches 10 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"给我个拥抱!","color":"green"}]'}
execute if score $action pgs_timer matches 11 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"跳跃是禁止的!","color":"green"}]'}
execute if score $action pgs_timer matches 12 run summon area_effect_cloud 27016 66 -17 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 12 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action","pgs_has_location"],CustomName:'[{"text":"从储藏室拿糖!","color":"green"}]'}
execute if score $action pgs_timer matches 12 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_location"],CustomName:'[{"text":"厨房","color":"aqua"}]'}
execute if score $action pgs_timer matches 12 run summon item 27012 66.5 -17 {Item:{id:"minecraft:sugar",Count:1b},PickupDelay:100000,Tags:["pgs_die_between_rounds","pgs_die"]}
execute if score $action pgs_timer matches 13 run summon area_effect_cloud 27035 66 -6 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 13 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"去办公室!","color":"green"}]'}
execute if score $action pgs_timer matches 14 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"远离客厅!","color":"green"}]'}
execute if score $action pgs_timer matches 15 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"跑步是禁止的!","color":"green"}]'}
execute if score $action pgs_timer matches 16 run summon area_effect_cloud 27021 66 -16 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 16 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"坐在厨房的桌子旁!","color":"green"}]'}
execute if score $action pgs_timer matches 17 run summon area_effect_cloud 27033 66 -25 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 17 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action","pgs_has_location"],CustomName:'[{"text":"摸摸狗!","color":"green"}]'}
execute if score $action pgs_timer matches 17 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_location"],CustomName:'[{"text":"前门","color":"aqua"}]'}
execute if score $action pgs_timer matches 18 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"穿上你的外套!","color":"green"}]'}
execute if score $action pgs_timer matches 19 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"扔掉旧的剩菜!","color":"green"}]'}




title @a[tag=playing,team=pgs] title [{"text":""}]
title @a[tag=playing,team=pgs] subtitle [{"selector":"@e[tag=pgs_action,type=area_effect_cloud]"}]
playsound minecraft:block.note_block.bell master @a[tag=playing,team=pgs] 27000 66 0 1000 1.0
scoreboard players set $action_time pgs_timer 180
bossbar set minecraft:play_gene_says/time value 180
bossbar set minecraft:play_gene_says/time visible true




scoreboard objectives remove pgs_run
scoreboard objectives remove pgs_jump
scoreboard objectives remove pgs_crouch
scoreboard objectives remove pgs_walk
scoreboard objectives remove pgs_crouch_d
scoreboard objectives remove pgs_potato
#m


tag @a remove pgs_has_sugar
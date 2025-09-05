#kills:
tp @e[tag=cs_die] 0 0 0
kill @e[tag=cs_die]


execute as @a[tag=playing,team=cs,tag=cs_playing] at @s run tellraw @s [{"text":"你猜测: ","color":"gray"},{"score":{"objective":"cs_sheep","name":"@s"},"color":"white"},{"text":"\n绵羊飞出: ","color":"gray"},{"score":{"objective":"cs_sheep","name":"$sheep"},"color":"white"},{"text":"\n羊毛飞出: ","color":"gray"},{"score":{"objective":"cs_sheep","name":"$fake"},"color":"white"}]
function scenario:count_sheep/clear_sidebar
scoreboard players set $cs active_scenario 0
schedule function scenario:check_active_scenarios 40t
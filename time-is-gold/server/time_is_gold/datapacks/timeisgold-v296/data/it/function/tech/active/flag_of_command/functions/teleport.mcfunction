$summon marker ~0.1 ~ ~ {Tags:["item.flag_of_command.tp_pos_marker","item.flag_of_command.$(playerid)"]}
$summon marker ~-0.1 ~ ~ {Tags:["item.flag_of_command.tp_pos_marker","item.flag_of_command.$(playerid)"]}
$summon marker ~ ~ ~0.1 {Tags:["item.flag_of_command.tp_pos_marker","item.flag_of_command.$(playerid)"]}
$summon marker ~ ~ ~-0.1 {Tags:["item.flag_of_command.tp_pos_marker","item.flag_of_command.$(playerid)"]}
$summon marker ~0.1 ~ ~0.1 {Tags:["item.flag_of_command.tp_pos_marker","item.flag_of_command.$(playerid)"]}
$summon marker ~0.1 ~ ~-0.1 {Tags:["item.flag_of_command.tp_pos_marker","item.flag_of_command.$(playerid)"]}
$summon marker ~-0.1 ~ ~0.1 {Tags:["item.flag_of_command.tp_pos_marker","item.flag_of_command.$(playerid)"]}
$summon marker ~-0.1 ~ ~-0.1 {Tags:["item.flag_of_command.tp_pos_marker","item.flag_of_command.$(playerid)"]}

$execute at @e[type=marker,tag=item.flag_of_command.$(playerid),sort=random,limit=1] as @a[predicate=system:player] run tp @s ~ ~ ~
$execute as @a[predicate=system:player] run title @s actionbar [{"text":"在","color":"green"},{"selector":"@n[scores={playerid=$(playerid)}]"},{"text":"的指挥下成功集结！","color":"green"}]
execute as @a[predicate=system:player] run scoreboard players set @s item.flag_of_command.grant 20
$kill @e[type=marker,tag=item.flag_of_command.$(playerid)]
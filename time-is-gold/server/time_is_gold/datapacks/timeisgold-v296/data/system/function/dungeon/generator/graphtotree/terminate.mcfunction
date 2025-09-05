# 그래프 변환 완료 후 특수 정점 태그 부여 및 정점 태그 초기화

$execute as @e[type=armor_stand,tag=$(vertex_tag)] run function system:dungeon/generator/graphtotree/tag_special_vertex/init {distance:$(distance), vertex_tag:$(vertex_tag), edge_tag:$(edge_tag)}

# Debug
#tellraw @a [{"text":"Graph conversion took ","color":"gray"},{"score":{"name":"@s","objective":"dungeon.generator.graphtotree.elapsed_tick"},"color":"gray"},{"text":" ticks","color":"gray"}]

$execute as @e[type=armor_stand,tag=$(available_tag)] run tag @s remove $(available_tag)
$execute as @e[type=armor_stand,tag=$(edge_tag)] run tag @s remove $(edge_tag)
$execute as @e[type=armor_stand,tag=$(vertex_tag)] run tag @s remove $(vertex_tag)

$execute as $(manageruuid) run scoreboard players set @s dungeon.generator.convert_check 1
kill @s
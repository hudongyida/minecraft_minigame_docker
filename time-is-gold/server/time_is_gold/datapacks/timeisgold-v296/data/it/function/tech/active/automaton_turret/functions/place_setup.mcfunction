# Summon display
# > plate
$summon block_display ~ ~-0.1 ~ {Tags:["item.automaton_turret.id-$(playerid)","item.automaton_turret.plate","item.automaton_turret.display"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:respawn_anchor",Properties:{charges:"4"}},brightness:{sky:0,block:10}}
# > axis
$summon block_display ~ ~0.9 ~ {Tags:["item.automaton_turret.id-$(playerid)","item.automaton_turret.axis","item.automaton_turret.display"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,-0.2f],scale:[0.4f,0.2f,0.4f]},block_state:{Name:"minecraft:pale_oak_log",Properties:{axis:"y"}}}
# > head
$summon block_display ~ ~1.4 ~ {Tags:["item.automaton_turret.id-$(playerid)","item.automaton_turret.head","item.automaton_turret.display"],\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.44f],scale:[1f,1f,1.25f]},block_state:{Name:"minecraft:grindstone",Properties:{face:"wall"}},teleport_duration:1}
# > interaction
$summon minecraft:interaction ~ ~-0.1 ~ {Tags:["item.automaton_turret.id-$(playerid)","item.automaton_turret.interaction"],width:1,height:2,response:1b}

# Data store
$execute as @s run scoreboard players set @s item.automaton_turret.fuel $(fuel)
$execute as @s run scoreboard players set @s item.automaton_turret.runtime $(runtime)

# > text_display
$execute at @s positioned ~ ~2 ~ run summon text_display ~ ~ ~ {Tags:["item.automaton_turret.id-$(playerid)","item.automaton_turret.text","item.automaton_turret.display"],\
text:[{"score":{"name":"@n[tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.marker,distance=..3]","objective":"item.automaton_turret.fuel"}},{"color":"yellow","text":"⚡"}],billboard:"center",default_background:1b,see_through:0b,alignment:"center"}
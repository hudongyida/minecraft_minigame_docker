# Place
$summon item_display ~ ~ ~ { \
Tags:["item.flag_of_command.display","admin.kill_on_reset"], \
data:{playerid:$(playerid)}, \
Passengers: [ \
{id:"minecraft:block_display",teleport_duration:1,Tags:["item.flag_of_command.display","admin.kill_on_reset"],block_state:{Name:"minecraft:spruce_log",Properties:{axis:"x"}},transformation:[0f,0.1f,0f,-0.0625f,-2f,0f,0f,2f,0f,0f,0.1f,-0.0625f,0f,0f,0f,1f]}, \
{id:"minecraft:block_display",teleport_duration:1,Tags:["item.flag_of_command.display","admin.kill_on_reset"],block_state:{Name:"minecraft:spruce_log",Properties:{axis:"x"}},transformation:[0f,0.05f,0f,-0.038125f,0.0765450084f,0f,0.0498533064f,1.8125f,0.997066127f,0f,-0.0038272504f,-0.5f,0f,0f,0f,1f]}, \
{id:"minecraft:block_display",teleport_duration:1,Tags:["item.flag_of_command.display","admin.kill_on_reset"],block_state:{Name:"minecraft:andesite",Properties:{}},transformation:[0.1625f,0f,0f,-0.09625f,0f,0.05f,0f,1.856875f,0f,0f,0.05f,-0.03875f,0f,0f,0f,1f]},\
{id:"minecraft:block_display",teleport_duration:1,Tags:["item.flag_of_command.display","admin.kill_on_reset"],block_state:{Name:"minecraft:green_glazed_terracotta",Properties:{facing:"east"}},transformation:[0.05f,0f,0f,-0.078125f,0f,1.5f,0f,0.38375f,0f,0f,1f,-0.5f,0f,0f,0f,1f]}]}

# SFX
execute at @s run playsound item.mace.smash_air block @a ~ ~ ~ 1 0.5 0
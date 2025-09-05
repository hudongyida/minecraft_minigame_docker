scoreboard players reset @s entityid

execute if entity @s[advancements={system:eventlistener/monster_attack={bit0=true}}] run scoreboard players add @s entityid 1
execute if entity @s[advancements={system:eventlistener/monster_attack={bit1=true}}] run scoreboard players add @s entityid 2
execute if entity @s[advancements={system:eventlistener/monster_attack={bit2=true}}] run scoreboard players add @s entityid 4
execute if entity @s[advancements={system:eventlistener/monster_attack={bit3=true}}] run scoreboard players add @s entityid 8
execute if entity @s[advancements={system:eventlistener/monster_attack={bit4=true}}] run scoreboard players add @s entityid 16
execute if entity @s[advancements={system:eventlistener/monster_attack={bit5=true}}] run scoreboard players add @s entityid 32
execute if entity @s[advancements={system:eventlistener/monster_attack={bit6=true}}] run scoreboard players add @s entityid 64
execute if entity @s[advancements={system:eventlistener/monster_attack={bit7=true}}] run scoreboard players add @s entityid 128
execute if entity @s[advancements={system:eventlistener/monster_attack={bit8=true}}] run scoreboard players add @s entityid 256
execute if entity @s[advancements={system:eventlistener/monster_attack={bit9=true}}] run scoreboard players add @s entityid 512
execute if entity @s[advancements={system:eventlistener/monster_attack={bit10=true}}] run scoreboard players add @s entityid 1024
execute if entity @s[advancements={system:eventlistener/monster_attack={bit11=true}}] run scoreboard players add @s entityid 2048
execute if entity @s[advancements={system:eventlistener/monster_attack={bit12=true}}] run scoreboard players add @s entityid 4096
execute if entity @s[advancements={system:eventlistener/monster_attack={bit13=true}}] run scoreboard players add @s entityid 8192
execute if entity @s[advancements={system:eventlistener/monster_attack={bit14=true}}] run scoreboard players add @s entityid 16384
execute if entity @s[advancements={system:eventlistener/monster_attack={bit15=true}}] run scoreboard players add @s entityid 32768
execute if entity @s[advancements={system:eventlistener/monster_attack={bit16=true}}] run scoreboard players add @s entityid 65536
execute if entity @s[advancements={system:eventlistener/monster_attack={bit17=true}}] run scoreboard players add @s entityid 131072
execute if entity @s[advancements={system:eventlistener/monster_attack={bit18=true}}] run scoreboard players add @s entityid 262144
execute if entity @s[advancements={system:eventlistener/monster_attack={bit19=true}}] run scoreboard players add @s entityid 524288
execute if entity @s[advancements={system:eventlistener/monster_attack={bit20=true}}] run scoreboard players add @s entityid 1048576
execute if entity @s[advancements={system:eventlistener/monster_attack={bit21=true}}] run scoreboard players add @s entityid 2097152
execute if entity @s[advancements={system:eventlistener/monster_attack={bit22=true}}] run scoreboard players add @s entityid 4194304
execute if entity @s[advancements={system:eventlistener/monster_attack={bit23=true}}] run scoreboard players add @s entityid 8388608
execute if entity @s[advancements={system:eventlistener/monster_attack={bit24=true}}] run scoreboard players add @s entityid 16777216
execute if entity @s[advancements={system:eventlistener/monster_attack={bit25=true}}] run scoreboard players add @s entityid 33554432
execute if entity @s[advancements={system:eventlistener/monster_attack={bit26=true}}] run scoreboard players add @s entityid 67108864
execute if entity @s[advancements={system:eventlistener/monster_attack={bit27=true}}] run scoreboard players add @s entityid 134217728
execute if entity @s[advancements={system:eventlistener/monster_attack={bit28=true}}] run scoreboard players add @s entityid 268435456
execute if entity @s[advancements={system:eventlistener/monster_attack={bit29=true}}] run scoreboard players add @s entityid 536870912
execute if entity @s[advancements={system:eventlistener/monster_attack={bit30=true}}] run scoreboard players add @s entityid 1073741824
execute if entity @s[advancements={system:eventlistener/monster_attack={bit31=true}}] run scoreboard players remove @s entityid 1073741825
execute if entity @s[advancements={system:eventlistener/monster_attack={bit31=true}}] run scoreboard players remove @s entityid 1073741823

#scoreboard players operation #ENTITY_FINDER entityid = @s entityid
#$execute as @e[tag=monster] if score @s entityid = #ENTITY_FINDER entityid run scoreboard players set @s playerid $(playerid)
#execute as @e[tag=monster] if score @s entityid = #ENTITY_FINDER entityid run function system:eventlistener/monster_attack/call_entity {playerid:$(playerid)}
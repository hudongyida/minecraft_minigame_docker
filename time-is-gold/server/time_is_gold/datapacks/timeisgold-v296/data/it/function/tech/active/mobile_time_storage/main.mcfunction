# cooldown
function it:tech/utils/cooltime/basic {type:active,path:mobile_time_storage,scoreboard:item.e47.cooldown,cooltime:1200}

# init
function it:tech/utils/detect/f_hand {item:hopper_minecart, item_tag:mobile_time_storage, tag:item.e47}
execute as @a[tag=item.e47] run function it:tech/utils/f_hand/change

execute as @a[tag=item.e47] if score @s item.e47.time_storage matches -2147483648..2147483647 run tag @s add item.e47.using
execute as @a[tag=item.e47.using] run tag @s remove item.e47

execute as @a[tag=item.e47.using] if score @s sneak matches 1 run tag @s add item.e47.return_pre
execute as @a[tag=item.e47.return_pre] run tag @s remove item.e47.using
execute as @a[tag=item.e47.return_pre] run tag @s remove item.e47

execute as @a[tag=item.e47] run function it:tech/utils/cooltime/init {scoreboard:item.e47.cooldown}
execute as @a[tag=item.e47] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1 0
execute as @a[tag=item.e47] run scoreboard players remove @s timeX10 100
execute as @a[tag=item.e47] run scoreboard players operation @s item.e47.time_storage >< @s timeX10
execute as @a[tag=item.e47] run scoreboard players add @s timeX10 100
execute as @a[tag=item.e47] run tag @s remove item.e47

# return
#  cooldown check
function it:tech/utils/cooltime/check {cooltimeTag:item.e47.cooldown, passTag:item.e47.return, receiveTag:item.e47.return_pre, scoreboard:item.e47.cooldown}
function it:tech/utils/cooltime/in_cooldown {failtag:item.e47.cooldown}
#  returning
execute as @a[tag=item.e47.return] run scoreboard players operation @s item.e47.time_storage >< @s timeX10
execute as @a[tag=item.e47.return] run scoreboard players operation @s timeX10 += @s item.e47.time_storage
execute as @a[tag=item.e47.return] run scoreboard players reset @s item.e47.time_storage
execute as @a[tag=item.e47.return] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0
execute as @a[tag=item.e47.return] run title @s actionbar {"text":"装备已成功关闭。","color":"gray"}
execute as @a[tag=item.e47.return] run tag @s remove item.e47.return

# already has used
#execute as @a[tag=item.e47.using] run title @s actionbar {"text":"你已经在使用该装备。","color":"red"}
execute as @a[tag=item.e47.using] at @s run playsound minecraft:block.decorated_pot.insert master @s ~ ~ ~ 1 2 0
execute as @a[tag=item.e47.using] run tag @s remove item.e47.using

# empty
execute as @a[scores={item.e47.time_storage=..0}] run tag @s add item.e47_empty
execute as @a[tag=item.e47_empty] run title @s actionbar {"text":"所有储存的时间已用尽。","color":"red"}
execute as @a[tag=item.e47_empty] at @s run playsound minecraft:item.bottle.empty master @s ~ ~ ~ 1 2 0
execute as @a[tag=item.e47_empty] run scoreboard players reset @s item.e47.time_storage
execute as @a[tag=item.e47_empty] run tag @s remove item.e47_empty

# supply
execute as @a[scores={item.e47.time_storage=1..}] run tag @s add item.e47_use
execute as @a[tag=item.e47_use] if score @s timeX10 matches ..99 run scoreboard players remove @s item.e47.time_storage 1
execute as @a[tag=item.e47_use] if score @s timeX10 matches ..99 run scoreboard players add @s timeX10 1
execute as @a[tag=item.e47_use] run tag @s remove item.e47_use

# in inventory
function it:tech/utils/detect/in_inventory {item:hopper_minecart, item_tag:mobile_time_storage, tag:item.has_e47}
execute as @a if score @s item.e47.time_storage matches -2147483648..2147483647 as @s[tag=!item.has_e47] run scoreboard players reset @s item.e47.time_storage
execute as @a[tag=item.has_e47] run tag @s remove item.has_e47



# show time
execute as @a if items entity @s weapon.mainhand hopper_minecart[custom_data~{item:mobile_time_storage}] if score @s item.e47.time_storage matches -2147483648..2147483647 if score @s item.e47.cooldown matches 1.. run title @s actionbar ["This device has ",{"score":{"name":"@s","objective":"item.e47.time_storage"},"color":"green"},"ms",{"text":" | ","color":"yellow"},{"text":"无法关闭","color":"red"}]
execute as @a if items entity @s weapon.mainhand hopper_minecart[custom_data~{item:mobile_time_storage}] if score @s item.e47.time_storage matches -2147483648..2147483647 unless score @s item.e47.cooldown matches 1.. run title @s actionbar ["This device has ",{"score":{"name":"@s","objective":"item.e47.time_storage"},"color":"green"},"ms",{"text":" | ","color":"yellow"},{"text":"无法关闭","color":"green"}]
execute as @a run function it:tech/utils/detect/crossbow/charge {item:modified_chain_crossbow, arrow_name:{"text":"锁链箭","color":"#aaaaaa","italic":false}, end_function__path:"it:tech/ranged/modified_chain_crossbow/crossbow/charge",prev_function__path:"it:tech/ranged/modified_chain_crossbow/crossbow/config_crossbow"}

# Can't pickup
execute as @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{item:modified_chain_crossbow}}},pickup:1b}] if entity @s run data modify entity @s pickup set value 2b
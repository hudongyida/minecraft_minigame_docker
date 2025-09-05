execute as @a run function it:tech/utils/detect/crossbow/charge {item:energy_blaster, arrow_name:{"text":"Errow","color":"#aa55aa","italic":false}, end_function__path:"it:tech/ranged/energy_blaster/crossbow/charge", prev_function__path:"none"}

# second attack
execute as @e[type=marker,tag=item.energy_blaster.marker] run scoreboard players add @s item.energy_blaster.blaster_delay 1
execute as @e[type=marker,tag=item.energy_blaster.marker] if score @s item.energy_blaster.blaster_delay matches 10.. run function it:tech/ranged/energy_blaster/blast

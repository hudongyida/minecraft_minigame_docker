execute as @a if items entity @s weapon.* *[custom_data~{item:ballista}] run effect give @s slowness 1 2 true
execute as @a run function it:tech/utils/detect/crossbow/charge {item:ballista, arrow_name:{"text":"BOLTS","color":"#aa55aa","italic":false}, end_function__path:"it:tech/ranged/ballista/crossbow/charge", prev_function__path:"none"}

execute as @e[type=arrow,tag=ballista,tag=!item.ballista.init] at @s run function it:tech/ranged/ballista/functions/init
execute as @e[type=arrow,tag=item.ballista.init,nbt={inGround:true,pickup:1b}] run data modify entity @s pickup set value 2b
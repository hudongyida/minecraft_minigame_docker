execute as @s at @s positioned ~-2 ~-1 ~-2 as @e[type=arrow,dx=4,dy=4,dz=4,nbt={pickup:0b,inGround:false},tag=!monsters.arrow_reflected] unless score @s item.plasma_sabre.intercept.chance matches 0.. run tag @s add item.plasma_sabre.intercept_arrows
execute as @e[type=arrow,tag=item.plasma_sabre.intercept_arrows,nbt={pickup:0b,inGround:false}] store result score @s item.plasma_sabre.intercept.chance run random value 1..100
execute as @e[type=arrow,tag=item.plasma_sabre.intercept_arrows,nbt={pickup:0b,inGround:false}] if score @s item.plasma_sabre.intercept.chance matches ..95 at @s run function it:tech/melee/plasma_sabre/set_motion

execute as @e[type=arrow,tag=item.plasma_sabre.intercept_arrows] run tag @s remove item.plasma_sabre.intercept_arrows
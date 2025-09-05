$execute as @n[tag=monster,scores={entityid=$(entityid)}] at @s run function it:tech/passive/revelatory_record/functions/hit

# SFX
playsound minecraft:block.chain.fall block @s ~ ~ ~ 0.4 0.8
playsound minecraft:item.spyglass.stop_using player @s ~ ~ ~ 1 0.5
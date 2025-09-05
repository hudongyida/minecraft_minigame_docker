function it:tech/utils/cooldown/tick {scoreboard:item.scarletron.cooldown}
function it:tech/utils/detect/offhand {item_tag:scarletron, tag:item.scarletron.active}

scoreboard players reset @a[scores={item.scarletron.active=1}] item.scarletron.active
execute as @a[tag=item.scarletron.active] run scoreboard players set @s item.scarletron.active 1

tag @a[tag=item.scarletron.active] remove item.scarletron.active
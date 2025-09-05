function it:tech/utils/detect/right_click {advancement:"it:ranged/vintage_brass_spyglass_right_click", item_tag:vintage_brass_spyglass, tag:item.vintage_brass_spyglass.pre, type:0}
tag @s remove item.vintage_brass_spyglass.pre

function it:tech/ranged/vintage_brass_spyglass/functions/actionbar
execute as @s unless items entity @s container.* *[custom_data~{item:gunpowder}] run return fail
scoreboard players add @s item.vintage_brass_spyglass.time 1
function it:tech/ranged/vintage_brass_spyglass/functions/sounds
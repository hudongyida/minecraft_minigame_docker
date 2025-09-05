execute if items entity @s container.* *[custom_data~{item:sigil_of_sinister}] run return fail
execute if items entity @s weapon.offhand *[custom_data~{item:sigil_of_sinister}] run return fail

function it:tech/utils/use_cost/sigil {slot:8, tag:sigil_of_arrows}

# SFX
execute at @s run playsound block.glass.break block @s ~ ~ ~ 0.5 0.75 0.5

# HUD
title @s actionbar {"translate": "item.sigil_of_arrows.notify.break"}
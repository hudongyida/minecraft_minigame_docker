execute as @a run function it:tech/utils/detect/slot {slot:6, item_tag:hedgehog_plushie, tag:item.hedgehog_plushie.active}

scoreboard players reset @a[scores={item.hedgehog_plushie.active=1}] item.hedgehog_plushie.active
execute as @a[tag=item.hedgehog_plushie.active] run scoreboard players set @s item.hedgehog_plushie.active 1

tag @a[tag=item.hedgehog_plushie.active] remove item.hedgehog_plushie.active

function it:tech/utils/cooldown/tick {scoreboard:item.hedgehog_plushie.cooldown}
execute as @a run function it:tech/utils/cooldown/ui_display {value:"item.hedgehog_plushie.cooldown", value_target:"@s", base:"item.hedgehog_plushie.cooldown", base_target:"#MAX_VALUE", invert:1, item:hedgehog_plushie}
scoreboard players set @s item.revelatory_record.fragility 300
execute unless score @s item.revelatory_record.fragility_delta matches 30.. run scoreboard players add @s item.revelatory_record.fragility_delta 10

# VFX
particle item{item:"music_disc_11"} ~ ~1 ~ 0 0 0 0.5 5 force
particle block{block_state:"minecraft:tinted_glass"} ~ ~1 ~ 0 0 0 0.5 5 force
particle note ~ ~1 ~ 0.3 0.5 0.3 0 1 force
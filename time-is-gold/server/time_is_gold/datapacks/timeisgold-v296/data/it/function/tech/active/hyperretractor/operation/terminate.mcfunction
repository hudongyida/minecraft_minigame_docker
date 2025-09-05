# SFX
execute at @s run playsound minecraft:block.vault.eject_item block @s ~ ~ ~ 1 0.75

# VFX
execute at @s run particle block{block_state:{Name:"sculk_catalyst"}} ~ ~1 ~ 0 0 0 0.1 25 force

$kill $(displayuuid)
kill @s
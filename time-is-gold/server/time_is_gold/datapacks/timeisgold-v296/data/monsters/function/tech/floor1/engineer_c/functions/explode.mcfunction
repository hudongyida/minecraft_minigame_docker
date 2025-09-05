execute unless entity @s[nbt={fuse:2s}] run return fail

data modify entity @s data merge value {power:4}
function monsters:tech/global/utils/explode/init with entity @s data

# VFX
particle explosion_emitter ~ ~ ~ 0 0 0 1 0 force

kill @s
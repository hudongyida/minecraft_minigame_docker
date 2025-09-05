$summon interaction ~ ~ ~ {Tags:[system.shop.interaction, system.shop.interaction.uninitialized, system.shop.$(selfuuid)], response:true}
execute positioned ~ ~ ~ as @n[type=interaction,tag=system.shop.interaction.uninitialized,distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify entity @s data.interactionuuid set from storage timeisgold:uuid_tokenizer output

execute positioned ~ ~ ~ as @n[type=interaction,tag=system.shop.interaction.uninitialized,distance=..0.5] run tag @s remove system.shop.interaction.uninitialized
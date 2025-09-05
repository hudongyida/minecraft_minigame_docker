execute if score @s item.reaper_scythe.veils matches 1.. run function it:tech/melee/reaper_scythe/gimmicks/grant_potion
execute if score @s item.reaper_scythe.veils matches 1.. run kill @n[type=marker, tag=item.reaper_scythe.portal]
execute if score @s item.reaper_scythe.veils matches 1.. run scoreboard players set @s item.reaper_scythe.veils -1
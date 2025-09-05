$summon tnt ~ ~ ~ {Motion:[$(motion_x),$(motion_y),$(motion_z)],Glowing:true,fuse:81,Tags:["monsters.engineer_c.tnt","admin.kill_on_reset"],Team:"color_red",data:{entityid:$(entityid)}}

# SFX
playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 0.5 0

# VFX
particle lava ~ ~ ~ 0 0 0 0.05 3 force
particle campfire_cosy_smoke ~ ~ ~ 0 0 0 1 2 force
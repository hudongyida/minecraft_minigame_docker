data modify storage timeisgold:function_api stack append value {path:"monsters:tech/floor2/crystal_alchemyst", initfunction:summon_tnt, tickfunction:step, endfunction:fuse_on, hitfunction:fuse_on,\
                                                                monsteruuid:0, targetuuid:0, target:0, speed:0.45, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:50, force_x:5, force_y:5, reflection:0}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:uuid_tokenizer output

execute anchored eyes run function monsters:tech/global/utils/tracking_object/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
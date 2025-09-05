data modify storage timeisgold:function_api stack append value {path:"bosses:tech/automaton/pattern3", initfunction:none, tickfunction:laser, hitfunction:explosion, endfunction:none,\
                                                                wall:1, hitend:1, speed:0.5, step:200, target:1, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, monsteruuid:0, system:0}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:uuid_tokenizer output
function monsters:tech/global/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]
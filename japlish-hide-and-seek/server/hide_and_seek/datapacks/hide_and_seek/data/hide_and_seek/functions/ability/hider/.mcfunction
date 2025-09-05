# 基本アビリティ
#拟态アビリティがmainhandにあればブロック検知
execute as @a[predicate=hide_and_seek:mainhand/ability/hider/disguise] at @s run function hide_and_seek:ability/hider/disguise/raycast/
#拟态解除使用
execute as @a[predicate=hide_and_seek:mainhand/ability/hider/release,scores={right_click=1..}] run function hide_and_seek:ability/hider/disguise/change_appearance/release
#旋转控制[锁定]使用
execute as @a[predicate=hide_and_seek:mainhand/ability/hider/rotation_lock,scores={right_click=1..}] run function hide_and_seek:ability/hider/disguise/tp/rotation/set_rotation_data
#旋转控制[左]使用
execute as @a[predicate=hide_and_seek:mainhand/ability/hider/rotate_left,scores={right_click=1..}] run function hide_and_seek:ability/hider/disguise/tp/rotation/rotate_left
#旋转控制[右]使用
execute as @a[predicate=hide_and_seek:mainhand/ability/hider/rotate_right,scores={right_click=1..}] run function hide_and_seek:ability/hider/disguise/tp/rotation/rotate_right

# 特殊アビリティ
#诱饵使用
execute as @a[predicate=hide_and_seek:mainhand/ability/hider/decoy,scores={right_click=1..}] at @s run function hide_and_seek:ability/hider/decoy/
#跳跃使用
execute as @a[predicate=hide_and_seek:mainhand/ability/hider/fly_hider,scores={right_click=1..}] at @s run function hide_and_seek:ability/hider/fly_hider/
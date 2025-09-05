#attack_bullet使用
execute as @a[predicate=hide_and_seek:mainhand/ability/seeker/attack_bullet,scores={right_click=1..}] at @s run function hide_and_seek:ability/seeker/attack_bullet/
#扫描使用
execute as @a[predicate=hide_and_seek:mainhand/ability/seeker/scan,scores={right_click=1..}] at @s run function hide_and_seek:ability/seeker/scan/
#fly使用
execute as @a[predicate=hide_and_seek:mainhand/ability/seeker/fly_seeker,scores={right_click=1..}] at @s run function hide_and_seek:ability/seeker/fly_seeker/
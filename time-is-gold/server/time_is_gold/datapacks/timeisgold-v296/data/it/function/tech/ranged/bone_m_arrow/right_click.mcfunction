function it:tech/utils/detect/right_click {advancement:"it:ranged/bone_m_arrow_right_click", item:bone, item_tag:bone_m_arrow, tag:item.bone_m_arrow.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.bone_m_arrow.fail, passTag:item.bone_m_arrow.use, inputTag:item.bone_m_arrow.pre, scoreboard:item.bone_m_arrow.cooldown, status:0}
tag @s[tag=item.bone_m_arrow.fail] remove item.bone_m_arrow.fail

execute as @s[tag=item.bone_m_arrow.use] at @s anchored eyes positioned ^ ^ ^1 run function it:tech/ranged/bone_m_arrow/throw_item_call
execute as @s[tag=item.bone_m_arrow.use] run function it:tech/utils/cooldown/init {scoreboard:item.bone_m_arrow.cooldown, value:10}

# SFX
execute as @s[tag=item.bone_m_arrow.use] at @s run playsound item.trident.throw player @a ~ ~ ~ 0.33 0.66 0
execute as @s[tag=item.bone_m_arrow.use] at @s run playsound minecraft:entity.skeleton.hurt hostile @a ~ ~ ~ 0.33 0.75 0

tag @s[tag=item.bone_m_arrow.use] remove item.bone_m_arrow.use
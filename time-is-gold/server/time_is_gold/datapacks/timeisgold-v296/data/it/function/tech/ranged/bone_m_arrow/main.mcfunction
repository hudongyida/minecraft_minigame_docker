function it:tech/utils/cooldown/tick {scoreboard:item.bone_m_arrow.cooldown}

execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:"item.bone_m_arrow.cooldown", value_target:"@s", base:"item.bone_m_arrow.cooldown", base_target:"#MAX_VALUE", invert:1, item:bone_m_arrow}
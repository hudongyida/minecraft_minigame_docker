#どこに表示するか
#アーマーを着ていれば上に表示
execute if data storage macro: ui{armor_output:""} run data modify storage macro: ui.effect_font set value "player_ui_icon_2"
execute unless data storage macro: ui{armor_output:""} run data modify storage macro: ui.effect_font set value "player_ui_icon_1"


#数を記録するためのスコアをリセット
scoreboard players set @s reserve_1 0

#付与されたエフェクトを検知(エフェクトの種類/エフェクト数を+1)
execute as @s[predicate=hide_and_seek:effect/absorption] run function hide_and_seek:ui/effect_icon/1/absorption
execute as @s[predicate=hide_and_seek:effect/bad_omen] run function hide_and_seek:ui/effect_icon/1/bad_omen
execute as @s[predicate=hide_and_seek:effect/blindness] run function hide_and_seek:ui/effect_icon/1/blindness
execute as @s[predicate=hide_and_seek:effect/conduit_power] run function hide_and_seek:ui/effect_icon/1/conduit_power
execute as @s[predicate=hide_and_seek:effect/darkness] run function hide_and_seek:ui/effect_icon/1/darkness
execute as @s[predicate=hide_and_seek:effect/dolphins_grace] run function hide_and_seek:ui/effect_icon/1/dolphins_grace
execute as @s[predicate=hide_and_seek:effect/fire_resistance] run function hide_and_seek:ui/effect_icon/1/fire_resistance
execute as @s[predicate=hide_and_seek:effect/glowing] run function hide_and_seek:ui/effect_icon/1/glowing
execute as @s[predicate=hide_and_seek:effect/haste] run function hide_and_seek:ui/effect_icon/1/haste
execute as @s[predicate=hide_and_seek:effect/health_boost] run function hide_and_seek:ui/effect_icon/1/health_boost
execute as @s[predicate=hide_and_seek:effect/hero_of_the_village] run function hide_and_seek:ui/effect_icon/1/hero_of_the_village
execute as @s[predicate=hide_and_seek:effect/hunger] run function hide_and_seek:ui/effect_icon/1/hunger
execute as @s[predicate=hide_and_seek:effect/instant_damage] run function hide_and_seek:ui/effect_icon/1/instant_damage
execute as @s[predicate=hide_and_seek:effect/instant_health] run function hide_and_seek:ui/effect_icon/1/instant_health
execute as @s[predicate=hide_and_seek:effect/invisibility] run function hide_and_seek:ui/effect_icon/1/invisibility
execute as @s[predicate=hide_and_seek:effect/jump_boost] run function hide_and_seek:ui/effect_icon/1/jump_boost
execute as @s[predicate=hide_and_seek:effect/levitation] run function hide_and_seek:ui/effect_icon/1/levitation
execute as @s[predicate=hide_and_seek:effect/luck] run function hide_and_seek:ui/effect_icon/1/luck
execute as @s[predicate=hide_and_seek:effect/mining_fatigue] run function hide_and_seek:ui/effect_icon/1/mining_fatigue
execute as @s[predicate=hide_and_seek:effect/nausea] run function hide_and_seek:ui/effect_icon/1/nausea
execute as @s[predicate=hide_and_seek:effect/night_vision] run function hide_and_seek:ui/effect_icon/1/night_vision
execute as @s[predicate=hide_and_seek:effect/poison] run function hide_and_seek:ui/effect_icon/1/poison
execute as @s[predicate=hide_and_seek:effect/regeneration] run function hide_and_seek:ui/effect_icon/1/regeneration
execute as @s[predicate=hide_and_seek:effect/resistance] run function hide_and_seek:ui/effect_icon/1/resistance
execute as @s[predicate=hide_and_seek:effect/saturation] run function hide_and_seek:ui/effect_icon/1/saturation
execute as @s[predicate=hide_and_seek:effect/slow_falling] run function hide_and_seek:ui/effect_icon/1/slow_falling
execute as @s[predicate=hide_and_seek:effect/slowness] run function hide_and_seek:ui/effect_icon/1/slowness
execute as @s[predicate=hide_and_seek:effect/speed] run function hide_and_seek:ui/effect_icon/1/speed
execute as @s[predicate=hide_and_seek:effect/strength] run function hide_and_seek:ui/effect_icon/1/strength
execute as @s[predicate=hide_and_seek:effect/unluck] run function hide_and_seek:ui/effect_icon/1/unluck
execute as @s[predicate=hide_and_seek:effect/water_breathing] run function hide_and_seek:ui/effect_icon/1/water_breathing
execute as @s[predicate=hide_and_seek:effect/weakness] run function hide_and_seek:ui/effect_icon/1/weakness
execute as @s[predicate=hide_and_seek:effect/wither] run function hide_and_seek:ui/effect_icon/1/wither

#エフェクト分ネガティブを計算
function hide_and_seek:ui/effect_icon/1/.negative
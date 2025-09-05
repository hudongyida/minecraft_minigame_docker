scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:scan_effect/on_summon/as_rig_entities
execute if entity @s[tag=aj.scan_effect.bone] run function #animated_java:scan_effect/zzzzzzzz/on_summon/as_bones


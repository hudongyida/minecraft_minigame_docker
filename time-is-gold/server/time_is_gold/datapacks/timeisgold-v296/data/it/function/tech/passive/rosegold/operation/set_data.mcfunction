# 실행 인자: 소환된 몬스터

execute if predicate it:25pc run item replace entity @s armor.head with minecraft:golden_helmet[attribute_modifiers=[{slot:"any",id:"rosegold_servant_armor",amount:2,operation:"add_value",type:"armor"}],unbreakable={},enchantment_glint_override=true]
execute if predicate it:25pc run item replace entity @s armor.body with minecraft:golden_chestplate[attribute_modifiers=[{slot:"any",id:"rosegold_servant_armor",amount:5,operation:"add_value",type:"armor"}],unbreakable={},enchantment_glint_override=true]
execute if predicate it:25pc run item replace entity @s armor.legs with minecraft:golden_leggings[attribute_modifiers=[{slot:"any",id:"rosegold_servant_armor",amount:3,operation:"add_value",type:"armor"}],unbreakable={},enchantment_glint_override=true]
execute if predicate it:25pc run item replace entity @s armor.feet with minecraft:golden_boots[attribute_modifiers=[{slot:"any",id:"rosegold_servant_armor",amount:1,operation:"add_value",type:"armor"}],unbreakable={},enchantment_glint_override=true]

tag @s remove item.rosegold.servant.uninitialized
# 잠긴 슬롯에 아이템이 들어있을 때 처리하는 함수.

function system:dungeon/special_rooms/shop/operation/fusion_crafter/gui/drop_items
function system:dungeon/special_rooms/shop/operation/fusion_crafter/gui/reset

# SFX
execute at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 0.5

# HUD
execute at @s as @a[distance=..5] run title @s actionbar [{"translate": "dungeon.special_rooms.shop.fusion_crafter.notify.disabled_slot", "fallback": "You can't put items in disabled slots!", "color": "red"}]
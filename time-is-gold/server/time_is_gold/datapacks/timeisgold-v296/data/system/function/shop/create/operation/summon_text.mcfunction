# 텍스트 디스플레이를 소환하는 함수.
# 실행 인자: 상점 마커

$summon text_display ~ ~1.2 ~ {Tags:[system.shop.text_display.item_name, system.shop.text_display.item_name.uninitialized, system.shop.$(selfuuid)], alignment:"center", billboard:"center"}
$summon text_display ~ ~0.9 ~ {Tags:[system.shop.text_display.item_price, system.shop.text_display.item_price.uninitialized, system.shop.$(selfuuid)], alignment:"center", billboard:"center"}

$execute positioned ~ ~1.2 ~ as @n[type=text_display,tag=system.shop.text_display.item_name.uninitialized,tag=system.shop.$(selfuuid),distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify entity @s data.nametextuuid set from storage timeisgold:uuid_tokenizer output
$execute positioned ~ ~1.2 ~ as @n[type=text_display,tag=system.shop.text_display.item_name.uninitialized,tag=system.shop.$(selfuuid),distance=..0.5] run tag @s remove system.shop.text_display.item_name.uninitialized

$execute positioned ~ ~0.9 ~ as @n[type=text_display,tag=system.shop.text_display.item_price.uninitialized,tag=system.shop.$(selfuuid),distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify entity @s data.pricetextuuid set from storage timeisgold:uuid_tokenizer output
$execute positioned ~ ~0.9 ~ as @n[type=text_display,tag=system.shop.text_display.item_price.uninitialized,tag=system.shop.$(selfuuid),distance=..0.5] run tag @s remove system.shop.text_display.item_price.uninitialized
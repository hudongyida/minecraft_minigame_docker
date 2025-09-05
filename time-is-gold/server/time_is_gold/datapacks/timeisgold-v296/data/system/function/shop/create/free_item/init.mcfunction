# 실행 위치에 아이템을 무료로 가져갈 수 있는 상점 개체 소환
# $(loottable)  - 아이템을 소환할 루트 테이블
# $(stock)      - -1일 경우 무제한, 1 이하일 경우 1회만 구매 가능, 2 이상일 경우 설정 횟수만큼 구매 가능

# 구성 요소 초기화
$summon marker ~ ~ ~ {Tags:[system.shop.marker.storage, system.shop.marker.storage.uninitialized], data:{\
    selfuuid:"", interactionuuid:"", itemuuid:"", nametextuuid:"", pricetextuuid:"",\
    loottable:"$(loottable)", type:0, playeruuid:0, itemdata:"", count:1, itemname:""}}
$execute positioned ~ ~ ~ as @n[type=marker,tag=system.shop.marker.storage.uninitialized,distance=..0.5] at @s run function system:shop/create/free_item/set_data {stock:$(stock)}
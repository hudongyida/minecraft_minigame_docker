# 함수 실행 위치에 아이템 판매 개체 소환
# $(loottable)  - 아이템을 소환할 루트 테이블
# $(stock)      - -1일 경우 무제한, 1 이하일 경우 1회만 구매 가능, 2 이상일 경우 설정 횟수만큼 구매 가능
# $(type)       - 상점 유형 설정
#                   0: 일반
#                   1: 아이템화 시간
#                   2: 화살 상점

# 예시 커맨드: /execute positioned -10 -59.5 10 run function system:shop/create/init {loot_table:"system:shop/time_crystal", type:1, stock:1}

# 구성 요소 초기화
$summon marker ~ ~ ~ {Tags:[system.shop.marker.storage, system.shop.marker.storage.uninitialized], data:{\
    selfuuid:"", interactionuuid:"", itemuuid:"", nametextuuid:"", pricetextuuid:"",\
    loottable:"$(loottable)", type:$(type), playeruuid:0, itemdata:"", count:1, itemname:""}}
$execute positioned ~ ~ ~ as @n[type=marker,tag=system.shop.marker.storage.uninitialized,distance=..0.5] at @s run function system:shop/create/set_data {type:$(type), stock:$(stock)}
# 실행 인자: 상점 마커

# 아이템 이름 및 개수 표시
$data modify entity $(nametextuuid) text set value [$(itemname), {"text":" x$(count)","color":"gray","italic":false}]

# type == 0, 1 -> 일반 상점 OR 아이템화 시간 상점 -> 시간 단위 표시
$execute if score @s system.shop.type matches 0..1 run data modify entity $(pricetextuuid) text set value [{"text":"⌚ ","color":"green","italic":false}, {"score":{"name":"$(selfuuid)","objective":"system.shop.price_display"}}, {"text":"s","color":"green","italic":false}]

# 가격이 0일 경우 -> 미니게임 보상 등
$execute if score @s system.shop.price matches ..0 run data modify entity $(pricetextuuid) text set value [{"text":"右键点击领取！","color":"yellow","italic":false}]
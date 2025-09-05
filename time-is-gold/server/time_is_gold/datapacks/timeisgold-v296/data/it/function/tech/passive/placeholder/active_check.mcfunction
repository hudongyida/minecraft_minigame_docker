# 설정된 슬롯에 아이템이 있을 경우 태그 부여

execute unless score @s item.placeholder.slot matches 0.. run scoreboard players set @s item.placeholder.slot 8
execute if score @s item.placeholder.slot matches 5 run function it:tech/utils/detect/slot {slot:5, item_tag:placeholder, tag:item.placeholder.active}
execute if score @s item.placeholder.slot matches 6 run function it:tech/utils/detect/slot {slot:6, item_tag:placeholder, tag:item.placeholder.active}
execute if score @s item.placeholder.slot matches 7 run function it:tech/utils/detect/slot {slot:7, item_tag:placeholder, tag:item.placeholder.active}
execute if score @s item.placeholder.slot matches 8 run function it:tech/utils/detect/slot {slot:8, item_tag:placeholder, tag:item.placeholder.active}
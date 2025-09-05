# 석궁 발사를 감지하는 함수.
# $(advancement)    - 석궁 발사를 확인하는 발전과제 이름
# $(item)       - 석궁 아이템의 태그
# $(path)           - 호출할 함수

$kill @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{item:$(item)}}}}]
$execute as @s[advancements={$(advancement)=true}] at @s run function $(path)
$execute as @s[advancements={$(advancement)=true}] at @s run advancement revoke @s only $(advancement)
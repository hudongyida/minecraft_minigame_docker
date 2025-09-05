# 실행 인자: 플레이어가 발사한 모든 화살
# $(bow)    - 화살을 발사하는 데 사용된 무기의 ID

# 예시) 사냥꾼의 활(ID == hunter_bow)로 발사된 화살에는 hunter_bow 태그가 추가됨.

$execute as @s run tag @s add $(bow)
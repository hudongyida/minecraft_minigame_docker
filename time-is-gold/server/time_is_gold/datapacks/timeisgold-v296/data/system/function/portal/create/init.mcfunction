# 포탈 기능을 관리하는 마커를 생성하는 함수
# $(radius)     - 포탈이 작동하는 범위 반지름
# $(function)   - 포탈에 진입했을 때 실행할 함수
# $(single_use) - 포탈을 한 번만 사용할지 여부(boolean)

$execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["system.portal.marker.data_storage","system.portal.marker.data_storage.uninitialized"],data:{radius:$(radius), single_use:$(single_use), function:"$(function)"}}
execute positioned ~ ~ ~ as @n[type=marker,tag=system.portal.marker.data_storage.uninitialized] run function system:portal/create/set_data with entity @s data
# BFS 알고리즘을 수행할 그래프를 만드는 갑옷 거치대 아이템 획득

#give @p armor_stand{display:{Name: {"text":"Vertex", "color":"green", "italic":false}}, EntityTag: {CustomNameVisible: 1b, Tags: ["bfs.vertex"], CustomName: {"text":"Vertex", "color":"green"}}} 1
#give @p armor_stand{display:{Name: {"text":"Edge", "color":"yellow", "italic":false}}, EntityTag: {CustomNameVisible: 1b, Tags: ["bfs.edge"], CustomName: {"text":"Edge", "color":"yellow"}}} 1
#give @p armor_stand{display:{Name: {"text":"Edge", "color":"red", "italic":false}}, EntityTag: {CustomNameVisible: 1b, Tags: ["bfs.edge", "bfs.edge.removed"], CustomName: {"text":"Edge", "color":"red"}}} 1

give @p minecraft:armor_stand[minecraft:entity_data={CustomName:{"text":"Vertex", "color":"green"},CustomNameVisible:1b,Tags:["bfs.vertex"],id:"minecraft:armor_stand"},minecraft:custom_name={"text":"Vertex", "color":"green", "italic":false}] 1
give @p minecraft:armor_stand[minecraft:entity_data={CustomName:{"text":"Edge", "color":"yellow"},CustomNameVisible:1b,Tags:["bfs.edge"],id:"minecraft:armor_stand"},minecraft:custom_name={"text":"Edge", "color":"yellow", "italic":false}] 1
give @p minecraft:armor_stand[minecraft:entity_data={CustomName:{"text":"Edge", "color":"red"},CustomNameVisible:1b,Tags:["bfs.edge","bfs.edge.removed"],id:"minecraft:armor_stand"},minecraft:custom_name={"text":"Edge", "color":"red", "italic":false}] 1
scoreboard players set #GraphManager dungeon.generator.graph_iterator.x 0
$execute run function system:dungeon/generator/place_marker/loop_x_vertex {vertex_len:$(vertex_len),edge_len:$(edge_len)}

scoreboard players set #GraphManager dungeon.generator.graph_iterator.x 0
$execute if score #GraphManager dungeon.generator.graph_iterator.z < #GraphManager dungeon.generator.graph_size.z positioned ~ ~ ~$(vertex_len) run function system:dungeon/generator/place_marker/loop_x_edge {vertex_len:$(vertex_len),edge_len:$(edge_len)}
$execute if score #GraphManager dungeon.generator.graph_iterator.z = #GraphManager dungeon.generator.graph_size.z positioned ~ ~ ~$(vertex_len) run function system:dungeon/generator/place_marker/loop_x_edge_removed {vertex_len:$(vertex_len),edge_len:$(edge_len)}

scoreboard players set #GraphManager dungeon.generator.graph_iterator.x 0
$execute if score #GraphManager dungeon.generator.graph_iterator.z matches 0 positioned ~ ~ ~-$(edge_len) run function system:dungeon/generator/place_marker/loop_x_edge_removed {vertex_len:$(vertex_len),edge_len:$(edge_len)}

scoreboard players add #GraphManager dungeon.generator.graph_iterator.z 1
$execute positioned ~ ~ ~$(vertex_len) positioned ~ ~ ~$(edge_len) if score #GraphManager dungeon.generator.graph_iterator.z <= #GraphManager dungeon.generator.graph_size.z run function system:dungeon/generator/place_marker/loop_z {vertex_len:$(vertex_len),edge_len:$(edge_len)}
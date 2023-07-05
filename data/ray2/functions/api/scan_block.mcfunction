#####################################################################
# api/scan_block.mcfunction
# written by Eroxen
#####################################################################

execute if predicate ray2:full run function ray2:internal/scan/full

execute unless predicate ray2:full if block ~ ~ ~ #ray2:partial run function ray2:internal/scan/partial

execute unless predicate ray2:full as @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:math/ray2/micro_scene_manager
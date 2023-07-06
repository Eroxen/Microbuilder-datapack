#####################################################################
# api/scan_block.mcfunction
# written by Eroxen
#####################################################################

execute if predicate ray2:full run function ray2:internal/scan/full

execute unless predicate ray2:full if block ~ ~ ~ #ray2:partial run function ray2:internal/scan/partial

function #ray2:scan_block
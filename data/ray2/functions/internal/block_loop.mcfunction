function ray2:api/scan_block
execute if score #ray2.stop ray2.calc matches 1 run return 0

function ray2:internal/block_loop/get_goto
# - #ray2.goto ray2.calc : axis to move on
# - #ray2.goto_distance ray2.calc : euclidian distance to the next block
# - #ray2.pos.x, .y, .z ray2.calc : new sub-block positions
# - #ray2.block.x, .y, .z ray2.calc : new block positions

scoreboard players operation #ray2.traversed_distance ray2.calc += #ray2.goto_distance ray2.calc
execute if score #ray2.traversed_distance ray2.calc > #ray2.max_distance ray2.calc run scoreboard players set #ray2.stop ray2.calc 1
execute if score #ray2.traversed_distance ray2.calc > #ray2.max_distance ray2.calc run return 0

execute if score #ray2.stop ray2.calc matches 0 if score #ray2.goto ray2.calc matches 0 if score #ray2.l.sign.x ray2.calc matches -1 positioned ~-1 ~ ~ run function ray2:internal/block_loop
execute if score #ray2.stop ray2.calc matches 0 if score #ray2.goto ray2.calc matches 0 if score #ray2.l.sign.x ray2.calc matches 1 positioned ~1 ~ ~ run function ray2:internal/block_loop
execute if score #ray2.stop ray2.calc matches 0 if score #ray2.goto ray2.calc matches 1 if score #ray2.l.sign.y ray2.calc matches -1 positioned ~ ~-1 ~ run function ray2:internal/block_loop
execute if score #ray2.stop ray2.calc matches 0 if score #ray2.goto ray2.calc matches 1 if score #ray2.l.sign.y ray2.calc matches 1 positioned ~ ~1 ~ run function ray2:internal/block_loop
execute if score #ray2.stop ray2.calc matches 0 if score #ray2.goto ray2.calc matches 2 if score #ray2.l.sign.z ray2.calc matches -1 positioned ~ ~ ~-1 run function ray2:internal/block_loop
execute if score #ray2.stop ray2.calc matches 0 if score #ray2.goto ray2.calc matches 2 if score #ray2.l.sign.z ray2.calc matches 1 positioned ~ ~ ~1 run function ray2:internal/block_loop
#####################################################################
# internal/block_loop/get_goto.mcfunction
# written by Eroxen
# scoreboard output:
# - #ray2.goto ray2.calc : axis to move on
# - #ray2.goto_distance ray2.calc : euclidian distance to the next block
# - #ray2.pos.x, .y, .z ray2.calc : new sub-block positions
# - #ray2.block.x, .y, .z ray2.calc : new block positions
#####################################################################

scoreboard players operation #ray2.temp.x ray2.calc = #ray2.pos.x ray2.calc
scoreboard players operation #ray2.temp.y ray2.calc = #ray2.pos.y ray2.calc
scoreboard players operation #ray2.temp.z ray2.calc = #ray2.pos.z ray2.calc
scoreboard players operation #ray2.temp.x ray2.calc -= #ray2.next_block_entry.x ray2.calc
scoreboard players operation #ray2.temp.y ray2.calc -= #ray2.next_block_entry.y ray2.calc
scoreboard players operation #ray2.temp.z ray2.calc -= #ray2.next_block_entry.z ray2.calc
scoreboard players operation #ray2.temp.x ray2.calc *= #ray2.-1000 ray2.calc
scoreboard players operation #ray2.temp.y ray2.calc *= #ray2.-1000 ray2.calc
scoreboard players operation #ray2.temp.z ray2.calc *= #ray2.-1000 ray2.calc
scoreboard players operation #ray2.temp.x ray2.calc /= #ray2.l.x ray2.calc
scoreboard players operation #ray2.temp.y ray2.calc /= #ray2.l.y ray2.calc
scoreboard players operation #ray2.temp.z ray2.calc /= #ray2.l.z ray2.calc

scoreboard players set #ray2.goto ray2.calc 0
execute if score #ray2.temp.y ray2.calc matches 0.. if score #ray2.temp.y ray2.calc < #ray2.temp.x ray2.calc run scoreboard players set #ray2.goto ray2.calc 1
execute if score #ray2.goto ray2.calc matches 0 if score #ray2.temp.z ray2.calc matches 0.. if score #ray2.temp.z ray2.calc < #ray2.temp.x ray2.calc run scoreboard players set #ray2.goto ray2.calc 2
execute if score #ray2.goto ray2.calc matches 1 if score #ray2.temp.z ray2.calc matches 0.. if score #ray2.temp.z ray2.calc < #ray2.temp.y ray2.calc run scoreboard players set #ray2.goto ray2.calc 2


execute if score #ray2.debug ray2.calc matches 3.. run tellraw @a ["",{"text":"ray2 goto: "},{"score":{"name":"#ray2.temp.x","objective":"ray2.calc"},"color":"red"},{"text":" "},{"score":{"name":"#ray2.temp.y","objective":"ray2.calc"},"color":"green"},{"text":" "},{"score":{"name":"#ray2.temp.z","objective":"ray2.calc"},"color":"#9999FF"},{"text":" > "},{"score":{"name":"#ray2.goto","objective":"ray2.calc"},"color":"light_purple"}]

execute if score #ray2.goto ray2.calc matches 0 run function ray2:internal/block_loop/goto/x
execute if score #ray2.goto ray2.calc matches 1 run function ray2:internal/block_loop/goto/y
execute if score #ray2.goto ray2.calc matches 2 run function ray2:internal/block_loop/goto/z

execute if score #ray2.debug ray2.calc matches 3.. run tellraw @a ["",{"text":" @ "},{"score":{"name":"#ray2.goto_distance","objective":"ray2.calc"}}]
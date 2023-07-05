scoreboard players operation #ray2.temp.x microbuilder.calc = #ray2.pos.x microbuilder.calc
scoreboard players operation #ray2.temp.y microbuilder.calc = #ray2.pos.y microbuilder.calc
scoreboard players operation #ray2.temp.z microbuilder.calc = #ray2.pos.z microbuilder.calc
scoreboard players operation #ray2.temp.x microbuilder.calc -= #ray2.next_block_entry.x ray2.calc
scoreboard players operation #ray2.temp.y microbuilder.calc -= #ray2.next_block_entry.y ray2.calc
scoreboard players operation #ray2.temp.z microbuilder.calc -= #ray2.next_block_entry.z ray2.calc
scoreboard players operation #ray2.temp.x microbuilder.calc *= #ray2.-1000 ray2.calc
scoreboard players operation #ray2.temp.y microbuilder.calc *= #ray2.-1000 ray2.calc
scoreboard players operation #ray2.temp.z microbuilder.calc *= #ray2.-1000 ray2.calc
scoreboard players operation #ray2.temp.x microbuilder.calc /= #ray2.l.x ray2.calc
scoreboard players operation #ray2.temp.y microbuilder.calc /= #ray2.l.y ray2.calc
scoreboard players operation #ray2.temp.z microbuilder.calc /= #ray2.l.z ray2.calc

#tellraw @a [{"text":"","color":"aqua"},{"score":{"name":"#ray2.temp.x","objective":"microbuilder.calc"}},{"text":" "},{"score":{"name":"#ray2.temp.y","objective":"microbuilder.calc"}},{"text":" "},{"score":{"name":"#ray2.temp.z","objective":"microbuilder.calc"}}]

scoreboard players set #ray2.goto microbuilder.calc 0
execute if score #ray2.temp.y microbuilder.calc matches 0.. if score #ray2.temp.y microbuilder.calc < #ray2.temp.x microbuilder.calc run scoreboard players set #ray2.goto microbuilder.calc 1
execute if score #ray2.goto microbuilder.calc matches 0 if score #ray2.temp.z microbuilder.calc matches 0.. if score #ray2.temp.z microbuilder.calc < #ray2.temp.x microbuilder.calc run scoreboard players set #ray2.goto microbuilder.calc 2
execute if score #ray2.goto microbuilder.calc matches 1 if score #ray2.temp.z microbuilder.calc matches 0.. if score #ray2.temp.z microbuilder.calc < #ray2.temp.y microbuilder.calc run scoreboard players set #ray2.goto microbuilder.calc 2

execute if score #ray2.goto microbuilder.calc matches 0 run function microbuilder:math/ray2/voxel_loop/goto/x
execute if score #ray2.goto microbuilder.calc matches 1 run function microbuilder:math/ray2/voxel_loop/goto/y
execute if score #ray2.goto microbuilder.calc matches 2 run function microbuilder:math/ray2/voxel_loop/goto/z
scoreboard players operation #ray2.goto_distance ray2.calc = #ray2.temp.z ray2.calc

scoreboard players operation #ray2.pos.z ray2.calc = #ray2.next_block_start.z ray2.calc
scoreboard players operation #ray2.block.z ray2.calc += #ray2.l.sign.z ray2.calc

scoreboard players operation #ray2.temp.x ray2.calc = #ray2.goto_distance ray2.calc
scoreboard players operation #ray2.temp.x ray2.calc *= #ray2.l.x ray2.calc
scoreboard players operation #ray2.temp.x ray2.calc /= #ray2.1000 ray2.calc
scoreboard players operation #ray2.pos.x ray2.calc += #ray2.temp.x ray2.calc

scoreboard players operation #ray2.temp.y ray2.calc = #ray2.goto_distance ray2.calc
scoreboard players operation #ray2.temp.y ray2.calc *= #ray2.l.y ray2.calc
scoreboard players operation #ray2.temp.y ray2.calc /= #ray2.1000 ray2.calc
scoreboard players operation #ray2.pos.y ray2.calc += #ray2.temp.y ray2.calc
scoreboard players operation #ray2.goto_distance microbuilder.calc = #ray2.temp.z microbuilder.calc

scoreboard players operation #ray2.pos.z microbuilder.calc = #ray2.next_block_start.z ray2.calc
scoreboard players operation #ray2.voxel.z microbuilder.calc += #ray2.l.sign.z ray2.calc

scoreboard players operation #ray2.temp.x microbuilder.calc = #ray2.goto_distance microbuilder.calc
scoreboard players operation #ray2.temp.x microbuilder.calc *= #ray2.l.x ray2.calc
scoreboard players operation #ray2.temp.x microbuilder.calc /= #1000 microbuilder.calc
scoreboard players operation #ray2.pos.x microbuilder.calc += #ray2.temp.x microbuilder.calc

scoreboard players operation #ray2.temp.y microbuilder.calc = #ray2.goto_distance microbuilder.calc
scoreboard players operation #ray2.temp.y microbuilder.calc *= #ray2.l.y ray2.calc
scoreboard players operation #ray2.temp.y microbuilder.calc /= #1000 microbuilder.calc
scoreboard players operation #ray2.pos.y microbuilder.calc += #ray2.temp.y microbuilder.calc
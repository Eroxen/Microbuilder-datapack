scoreboard players set #ray2.stop microbuilder.calc 1
scoreboard players set #ray2.hit microbuilder.calc 1
scoreboard players set #ray2.stop ray2.calc 1
scoreboard players set #ray2.hit ray2.calc 1

scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc = #ray2.voxel.x microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc *= #1000 microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc += #ray2.pos.x microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc /= scale microbuilder.calc
execute store result storage ray2:calc root.hit_candidates[-1].pos[0] int 1 run scoreboard players get #ray2.temp.sub_block_pos microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc = #ray2.voxel.y microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc *= #1000 microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc += #ray2.pos.y microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc /= scale microbuilder.calc
execute store result storage ray2:calc root.hit_candidates[-1].pos[1] int 1 run scoreboard players get #ray2.temp.sub_block_pos microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc = #ray2.voxel.z microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc *= #1000 microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc += #ray2.pos.z microbuilder.calc
scoreboard players operation #ray2.temp.sub_block_pos microbuilder.calc /= scale microbuilder.calc
execute store result storage ray2:calc root.hit_candidates[-1].pos[2] int 1 run scoreboard players get #ray2.temp.sub_block_pos microbuilder.calc

scoreboard players operation #ray2.temp.distance microbuilder.calc = #ray2.traversed_distance ray2.calc
scoreboard players operation #ray2.temp.distance microbuilder.calc *= scale microbuilder.calc
scoreboard players operation #ray2.temp.distance microbuilder.calc += #ray2.traversed_distance microbuilder.calc
scoreboard players operation #ray2.temp.distance microbuilder.calc /= scale microbuilder.calc
execute store result storage ray2:calc root.hit_candidates[-1].distance int 1 run scoreboard players get #ray2.temp.distance microbuilder.calc
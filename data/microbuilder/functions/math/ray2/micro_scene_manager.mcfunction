data modify storage microbuilder:calc math.ray2.micro_scene set value {x:[],y:[],z:[]}

scoreboard players set #ray2.stop microbuilder.calc 0
scoreboard players set #ray2.hit microbuilder.calc 0
scoreboard players set #1000 microbuilder.calc 1000
scoreboard players set #ray2.traversed_distance microbuilder.calc 0
execute store result score scale microbuilder.calc run data get entity @s data.scale 1
data modify storage microbuilder:calc scene set from entity @s data.scene

scoreboard players operation #ray2.pos.x microbuilder.calc = #ray2.pos.x ray2.calc
scoreboard players operation #ray2.pos.y microbuilder.calc = #ray2.pos.y ray2.calc
scoreboard players operation #ray2.pos.z microbuilder.calc = #ray2.pos.z ray2.calc
scoreboard players operation #ray2.voxel.x microbuilder.calc = #ray2.pos.x microbuilder.calc
scoreboard players operation #ray2.voxel.y microbuilder.calc = #ray2.pos.y microbuilder.calc
scoreboard players operation #ray2.voxel.z microbuilder.calc = #ray2.pos.z microbuilder.calc
scoreboard players operation #ray2.voxel.x microbuilder.calc *= scale microbuilder.calc
scoreboard players operation #ray2.voxel.y microbuilder.calc *= scale microbuilder.calc
scoreboard players operation #ray2.voxel.z microbuilder.calc *= scale microbuilder.calc
scoreboard players operation #ray2.voxel.x microbuilder.calc /= #1000 microbuilder.calc
scoreboard players operation #ray2.voxel.y microbuilder.calc /= #1000 microbuilder.calc
scoreboard players operation #ray2.voxel.z microbuilder.calc /= #1000 microbuilder.calc
#execute if score #ray2.pos.x microbuilder.calc matches ..0 run scoreboard players set #ray2.voxel.x microbuilder.calc -1
#execute if score #ray2.pos.y microbuilder.calc matches ..0 run scoreboard players set #ray2.voxel.y microbuilder.calc -1
#execute if score #ray2.pos.z microbuilder.calc matches ..0 run scoreboard players set #ray2.voxel.z microbuilder.calc -1

scoreboard players operation #ray2.pos.x microbuilder.calc *= scale microbuilder.calc
scoreboard players operation #ray2.pos.y microbuilder.calc *= scale microbuilder.calc
scoreboard players operation #ray2.pos.z microbuilder.calc *= scale microbuilder.calc
scoreboard players operation #ray2.pos.x microbuilder.calc %= #1000 microbuilder.calc
scoreboard players operation #ray2.pos.y microbuilder.calc %= #1000 microbuilder.calc
scoreboard players operation #ray2.pos.z microbuilder.calc %= #1000 microbuilder.calc
execute if score #ray2.pos.x ray2.calc matches 1000 run scoreboard players remove #ray2.voxel.x microbuilder.calc 1
execute if score #ray2.pos.y ray2.calc matches 1000 run scoreboard players remove #ray2.voxel.y microbuilder.calc 1
execute if score #ray2.pos.z ray2.calc matches 1000 run scoreboard players remove #ray2.voxel.z microbuilder.calc 1
execute if score #ray2.pos.x ray2.calc matches 1000 run scoreboard players set #ray2.pos.x microbuilder.calc 1000
execute if score #ray2.pos.y ray2.calc matches 1000 run scoreboard players set #ray2.pos.y microbuilder.calc 1000
execute if score #ray2.pos.z ray2.calc matches 1000 run scoreboard players set #ray2.pos.z microbuilder.calc 1000

#tellraw @a ["",{"score":{"name":"#ray2.voxel.x","objective":"microbuilder.calc"}},{"text":" "},{"score":{"name":"#ray2.voxel.y","objective":"microbuilder.calc"}},{"text":" "},{"score":{"name":"#ray2.voxel.z","objective":"microbuilder.calc"}}]
#tellraw @a ["",{"score":{"name":"#ray2.pos.x","objective":"microbuilder.calc"}},{"text":" "},{"score":{"name":"#ray2.pos.y","objective":"microbuilder.calc"}},{"text":" "},{"score":{"name":"#ray2.pos.z","objective":"microbuilder.calc"}}]

function microbuilder:math/ray2/voxel_loop
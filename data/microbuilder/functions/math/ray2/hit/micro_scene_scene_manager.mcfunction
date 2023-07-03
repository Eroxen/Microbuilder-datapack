data modify storage microbuilder:calc math.ray2.micro_scene set value {x:[],y:[],z:[]}

execute if score d_x microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.partial.x set from storage microbuilder:calc math.ray2.partial_int.nx
execute if score d_x microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.partial.x set from storage microbuilder:calc math.ray2.partial_int.px
execute if score d_y microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.partial.y set from storage microbuilder:calc math.ray2.partial_int.ny
execute if score d_y microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.partial.y set from storage microbuilder:calc math.ray2.partial_int.py
execute if score d_z microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.partial.z set from storage microbuilder:calc math.ray2.partial_int.nz
execute if score d_z microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.partial.z set from storage microbuilder:calc math.ray2.partial_int.pz

scoreboard players operation partial_x microbuilder.calc = precise_x microbuilder.calc
scoreboard players operation partial_y microbuilder.calc = precise_y microbuilder.calc
scoreboard players operation partial_z microbuilder.calc = precise_z microbuilder.calc
scoreboard players operation base_x microbuilder.calc = block_x microbuilder.calc
scoreboard players operation base_x microbuilder.calc *= precision microbuilder.calc
scoreboard players operation partial_x microbuilder.calc -= base_x microbuilder.calc
scoreboard players operation base_y microbuilder.calc = block_y microbuilder.calc
scoreboard players operation base_y microbuilder.calc *= precision microbuilder.calc
scoreboard players operation partial_y microbuilder.calc -= base_y microbuilder.calc
scoreboard players operation base_z microbuilder.calc = block_z microbuilder.calc
scoreboard players operation base_z microbuilder.calc *= precision microbuilder.calc
scoreboard players operation partial_z microbuilder.calc -= base_z microbuilder.calc

scoreboard players set precision microbuilder.calc 1000
execute store result score scale microbuilder.calc run data get entity @s data.scale 1
data modify storage microbuilder:calc scene set from entity @s data.scene
scoreboard players set i microbuilder.calc 0

function microbuilder:math/ray2/hit/micro_scene/faces_array
function microbuilder:math/ray2/hit/micro_scene/loop
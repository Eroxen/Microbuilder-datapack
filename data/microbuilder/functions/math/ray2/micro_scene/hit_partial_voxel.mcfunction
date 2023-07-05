data modify storage microbuilder:calc math.ray2.partial_int set value {px:[],nx:[],py:[],ny:[],pz:[],nz:[]}

data modify storage microbuilder:calc math.ray2.partial set value {x:[],y:[],z:[]}


data modify storage microbuilder:calc math.ray2.partial_int set from storage microbuilder:registry state.partial

execute if score d_x microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.partial.x set from storage microbuilder:calc math.ray2.partial_int.nx
execute if score d_x microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.partial.x set from storage microbuilder:calc math.ray2.partial_int.px
execute if score d_y microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.partial.y set from storage microbuilder:calc math.ray2.partial_int.ny
execute if score d_y microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.partial.y set from storage microbuilder:calc math.ray2.partial_int.py
execute if score d_z microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.partial.z set from storage microbuilder:calc math.ray2.partial_int.nz
execute if score d_z microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.partial.z set from storage microbuilder:calc math.ray2.partial_int.pz


scoreboard players operation partial_x microbuilder.calc = precise_x microbuilder.calc
scoreboard players operation partial_y microbuilder.calc = precise_y microbuilder.calc
scoreboard players operation partial_z microbuilder.calc = precise_z microbuilder.calc
scoreboard players operation base microbuilder.calc = block_x microbuilder.calc
scoreboard players operation base microbuilder.calc *= precision microbuilder.calc
scoreboard players operation partial_x microbuilder.calc -= base microbuilder.calc
scoreboard players operation base microbuilder.calc = block_y microbuilder.calc
scoreboard players operation base microbuilder.calc *= precision microbuilder.calc
scoreboard players operation partial_y microbuilder.calc -= base microbuilder.calc
scoreboard players operation base microbuilder.calc = block_z microbuilder.calc
scoreboard players operation base microbuilder.calc *= precision microbuilder.calc
scoreboard players operation partial_z microbuilder.calc -= base microbuilder.calc

scoreboard players set partial_d_min microbuilder.calc 999999999
scoreboard players set partial_d_x microbuilder.calc -1
scoreboard players set partial_d_y microbuilder.calc -1
scoreboard players set partial_d_z microbuilder.calc -1

scoreboard players set hit_partial microbuilder.calc 0
scoreboard players set hit_partial_x microbuilder.calc 0
scoreboard players set hit_partial_y microbuilder.calc 0
scoreboard players set hit_partial_z microbuilder.calc 0

execute if data storage microbuilder:calc math.ray2.partial.x[0] run function microbuilder:math/ray2/hit/partial/intersect_x_loop
execute if data storage microbuilder:calc math.ray2.partial.y[0] run function microbuilder:math/ray2/hit/partial/intersect_y_loop
execute if data storage microbuilder:calc math.ray2.partial.z[0] run function microbuilder:math/ray2/hit/partial/intersect_z_loop
execute if score hit_partial_x microbuilder.calc matches 1 run scoreboard players set hit_partial microbuilder.calc 1
execute if score hit_partial_y microbuilder.calc matches 1 run scoreboard players set hit_partial microbuilder.calc 1
execute if score hit_partial_z microbuilder.calc matches 1 run scoreboard players set hit_partial microbuilder.calc 1

tellraw @a {"score":{"name":"hit_partial","objective":"microbuilder.calc"}}
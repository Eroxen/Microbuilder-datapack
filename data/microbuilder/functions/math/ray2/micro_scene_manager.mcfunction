data modify storage microbuilder:calc math.ray2.micro_scene set value {x:[],y:[],z:[]}

scoreboard players operation partial_x microbuilder.calc = #ray2.pos.x ray2.calc
scoreboard players operation partial_y microbuilder.calc = #ray2.pos.y ray2.calc
scoreboard players operation partial_z microbuilder.calc = #ray2.pos.z ray2.calc

scoreboard players set precision microbuilder.calc 1000
execute store result score scale microbuilder.calc run data get entity @s data.scale 1
data modify storage microbuilder:calc scene set from entity @s data.scene

tellraw @a ["",{"score":{"name":"#ray2.x","objective":"microbuilder.calc"}},{"text":" "},{"score":{"name":"#ray2.y","objective":"microbuilder.calc"}},{"text":" "},{"score":{"name":"#ray2.z","objective":"microbuilder.calc"}}]

#return 0

function microbuilder:math/ray2/micro_scene/faces_array
function microbuilder:math/ray2/micro_scene/loop
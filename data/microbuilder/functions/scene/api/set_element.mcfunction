#####################################################################
# set_element.mcfunction
# Storage input:
# - microbuilder:calc scene : scene
# - microbuilder:calc scene_element : scene element
# Scoreboard input:
# - x microbuilder.calc : x index
# - y microbuilder.calc : y index
# - z microbuilder.calc : z index
#####################################################################

data modify storage microbuilder:calc set_element set value {read:[],write:[],layer:[],x1:[],y1:[],z1:[],x2:[],y2:[],z2:[]}
data modify storage microbuilder:calc set_element.read set from storage microbuilder:calc scene

scoreboard players operation i microbuilder.calc = x microbuilder.calc
execute if score i microbuilder.calc matches 1.. run function microbuilder:scene/set_element_loop
data modify storage microbuilder:calc set_element.x1 set from storage microbuilder:calc set_element.write
data modify storage microbuilder:calc set_element.x2 set from storage microbuilder:calc set_element.read
data remove storage microbuilder:calc set_element.x2[0]
data modify storage microbuilder:calc set_element.read set from storage microbuilder:calc set_element.read[0]
data modify storage microbuilder:calc set_element.write set value []

scoreboard players operation i microbuilder.calc = y microbuilder.calc
execute if score i microbuilder.calc matches 1.. run function microbuilder:scene/set_element_loop
data modify storage microbuilder:calc set_element.y1 set from storage microbuilder:calc set_element.write
data modify storage microbuilder:calc set_element.y2 set from storage microbuilder:calc set_element.read
data remove storage microbuilder:calc set_element.y2[0]
data modify storage microbuilder:calc set_element.read set from storage microbuilder:calc set_element.read[0]
data modify storage microbuilder:calc set_element.write set value []

scoreboard players operation i microbuilder.calc = z microbuilder.calc
execute if score i microbuilder.calc matches 1.. run function microbuilder:scene/set_element_loop
data modify storage microbuilder:calc set_element.z1 set from storage microbuilder:calc set_element.write
data modify storage microbuilder:calc set_element.z2 set from storage microbuilder:calc set_element.read
execute store result score contents microbuilder.calc run data get storage microbuilder:calc scene_element
execute if score contents microbuilder.calc matches 1.. run data modify storage microbuilder:calc set_element.z2[0] set from storage microbuilder:calc scene_element
execute if score contents microbuilder.calc matches 0 run data modify storage microbuilder:calc set_element.z2[0] set value {}

data modify storage microbuilder:calc set_element.z1 append from storage microbuilder:calc set_element.z2[]
data modify storage microbuilder:calc set_element.y1 append from storage microbuilder:calc set_element.z1
data modify storage microbuilder:calc set_element.y1 append from storage microbuilder:calc set_element.y2[]
data modify storage microbuilder:calc set_element.x1 append from storage microbuilder:calc set_element.y1
data modify storage microbuilder:calc set_element.x1 append from storage microbuilder:calc set_element.x2[]

data modify storage microbuilder:calc scene set from storage microbuilder:calc set_element.x1
data remove storage microbuilder:calc set_element
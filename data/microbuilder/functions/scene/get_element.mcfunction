data modify storage microbuilder:calc get_element set from storage microbuilder:calc scene

scoreboard players operation i microbuilder.calc = x microbuilder.calc
execute if score i microbuilder.calc matches 1.. run function microbuilder:scene/get_element_loop
data modify storage microbuilder:calc get_element set from storage microbuilder:calc get_element[0]

execute unless data storage microbuilder:calc get_element[][].data run data modify storage microbuilder:calc scene_element set value {}
execute if data storage microbuilder:calc get_element[][].data run function microbuilder:scene/get_element_y
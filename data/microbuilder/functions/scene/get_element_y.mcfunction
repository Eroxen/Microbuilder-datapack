scoreboard players operation i microbuilder.calc = y microbuilder.calc
execute if score i microbuilder.calc matches 1.. run function microbuilder:scene/get_element_loop
data modify storage microbuilder:calc get_element set from storage microbuilder:calc get_element[0]

execute unless data storage microbuilder:calc get_element[].state run data modify storage microbuilder:calc scene_element set value {}
execute if data storage microbuilder:calc get_element[].state run function microbuilder:scene/get_element_z
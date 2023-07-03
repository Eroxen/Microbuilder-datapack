scoreboard players remove i microbuilder.calc 1
data modify storage microbuilder:calc set_element.write append from storage microbuilder:calc set_element.read[0]
data remove storage microbuilder:calc set_element.read[0]
execute if score i microbuilder.calc matches 1.. run function microbuilder:scene/set_element_loop
#####################################################################
# get_block_at_index.mcfunction
# Scoreboard input:
# - #property_index microbuilder.calc : index in the block registry
# Storage output:
# - microbuilder:registry property : object defining the block properties
#####################################################################

data remove storage microbuilder:registry property

execute if score #property_index microbuilder.calc matches 0 run data modify storage microbuilder:registry property set from storage microbuilder:registry properties[0]
execute if score #property_index microbuilder.calc matches 1 run data modify storage microbuilder:registry property set from storage microbuilder:registry properties[1]
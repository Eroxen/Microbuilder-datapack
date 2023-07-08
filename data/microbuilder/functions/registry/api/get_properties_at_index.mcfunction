#####################################################################
# get_block_at_index.mcfunction
# Scoreboard input:
# - #property_index microbuilder.calc : index in the block registry
# Storage output:
# - microbuilder:registry property : object defining the block properties
#####################################################################

data remove storage microbuilder:registry property

function microbuilder:registry/data/get_property_tree/0_31
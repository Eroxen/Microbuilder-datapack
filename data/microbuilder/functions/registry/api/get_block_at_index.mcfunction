#####################################################################
# get_block_at_index.mcfunction
# Scoreboard input:
# - #index microbuilder.calc : index in the block registry
# Storage output:
# - microbuilder:registry block : object defining the block
#####################################################################

data remove storage microbuilder:registry block

function microbuilder:registry/data/get_block_tree/0_1023
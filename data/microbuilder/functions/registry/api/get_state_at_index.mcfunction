#####################################################################
# get_block_at_index.mcfunction
# Scoreboard input:
# - #state_index microbuilder.calc : index in the states list
# Storage output:
# - microbuilder:registry state : object defining the block state
#####################################################################

data remove storage microbuilder:registry state

function microbuilder:registry/data/get_state_tree/0_63
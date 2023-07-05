#####################################################################
# get_block_at_index.mcfunction
# Scoreboard input:
# - #state_index microbuilder.calc : index in the states list
# Storage output:
# - microbuilder:registry state : object defining the block state
#####################################################################

data remove storage microbuilder:registry state

execute if score #state_index microbuilder.calc matches 0 run data modify storage microbuilder:registry state set from storage microbuilder:registry property.states[0]
execute if score #state_index microbuilder.calc matches 1 run data modify storage microbuilder:registry state set from storage microbuilder:registry property.states[1]
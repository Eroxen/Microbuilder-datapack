#####################################################################
# get_block_at_index.mcfunction
# Scoreboard input:
# - #index microbuilder.calc : index in the block registry
# Storage output:
# - microbuilder:registry block : object defining the block
#####################################################################

data remove storage microbuilder:registry block

execute if score #index microbuilder.calc matches 0 run data modify storage microbuilder:registry block set from storage microbuilder:registry blocks[0]
execute if score #index microbuilder.calc matches 1 run data modify storage microbuilder:registry block set from storage microbuilder:registry blocks[1]
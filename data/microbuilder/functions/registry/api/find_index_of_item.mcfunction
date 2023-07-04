#####################################################################
# find_index_of_item.mcfunction
# Storage input:
# - microbuilder:calc item_id : id of the item to search
# Scoreboard output:
# - #index microbuilder.calc : index in the block registry
#####################################################################

data modify storage microbuilder:calc search set value []
data modify storage microbuilder:calc search append from storage microbuilder:registry blocks[].item
execute store result score #index microbuilder.calc run data get storage microbuilder:calc search
function microbuilder:registry/internal/find_index_of_item_loop
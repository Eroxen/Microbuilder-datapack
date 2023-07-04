scoreboard players remove #index microbuilder.calc 1
execute store success score #different microbuilder.calc run data modify storage microbuilder:calc search[-1] set from storage microbuilder:calc item_id
data remove storage microbuilder:calc search[-1]
execute if score #index microbuilder.calc matches 0.. if score #different microbuilder.calc matches 1 run function microbuilder:registry/internal/find_index_of_item_loop
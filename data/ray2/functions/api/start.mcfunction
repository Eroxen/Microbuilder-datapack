#####################################################################
# api/start.mcfunction
# written by Eroxen
#
# storage input:
# - ray2:api :
#   - obj params :
#     - double max_distance : max distance of the raycast, default 4.5d
#
# storage output:
# - ray2:api :
#   - obj result :
#     - byte hit : whether or not the raycast hit something
#     - obj normal : normal of the hit surface
#       - string axis : "x", "y" or "z"
#       - int sign : -1 or 1
#     - list<int> block : hit block
#     - list<double> sub_block_pos : hit coordinates within the block space
#     - list<double> pos : absolute coordinates of the hit point
#     - list<string> hit_types : types of hit target. Can contain "block", "full_block", "partial_block"
#####################################################################

data modify storage ray2:calc root.input set value {max_distance:4.5d}
data modify storage ray2:calc root.input merge from storage ray2:api params

execute store result score #ray2.max_distance ray2.calc run data get storage ray2:calc root.input.max_distance 1000

scoreboard players set #ray2.hit ray2.calc 0
scoreboard players set #ray2.stop ray2.calc 0
scoreboard players set #ray2.traversed_distance ray2.calc 0

data modify storage ray2:calc root set value {init:{},hit_candidates:[]}

execute positioned ^ ^ ^ summon marker run function ray2:internal/start/get_init_pos
# - #ray2.l.x, .y, .z ray2.calc : direction vector of the raycast
# - #ray2.l.sign.x, .y, .z ray2.calc : direction vector signs
# - #ray2.block.x, .y, .z ray2.calc : initial block positions
# - #ray2.init_pos.x, .y, .z ray2.calc : initial sub-block positions
# - #ray2.most_sig_axis ray2.calc : most significant axis
# - #ray2.next_block_entry.x, .y, .z ray2.calc : sub-block position where the next block will be entered

scoreboard players operation #ray2.pos.x ray2.calc = #ray2.init_pos.x ray2.calc
scoreboard players operation #ray2.pos.y ray2.calc = #ray2.init_pos.y ray2.calc
scoreboard players operation #ray2.pos.z ray2.calc = #ray2.init_pos.z ray2.calc
scoreboard players set #ray2.1000 ray2.calc 1000
scoreboard players set #ray2.-1000 ray2.calc -1000

scoreboard players operation #ray2.next_block_start.x ray2.calc = #ray2.1000 ray2.calc
scoreboard players operation #ray2.next_block_start.y ray2.calc = #ray2.1000 ray2.calc
scoreboard players operation #ray2.next_block_start.z ray2.calc = #ray2.1000 ray2.calc
scoreboard players operation #ray2.next_block_start.x ray2.calc -= #ray2.next_block_entry.x ray2.calc
scoreboard players operation #ray2.next_block_start.y ray2.calc -= #ray2.next_block_entry.y ray2.calc
scoreboard players operation #ray2.next_block_start.z ray2.calc -= #ray2.next_block_entry.z ray2.calc

execute positioned ^ ^ ^ align x align y align z positioned ~0.5 ~0.5 ~0.5 run function ray2:internal/block_loop

data modify storage ray2:api result set value {hit:0b}
execute if score #ray2.hit ray2.calc matches 1 if data storage ray2:calc root.hit_candidates[0] run function ray2:internal/select_candidate

execute if score #ray2.debug ray2.calc matches 1.. run tellraw @a ["",{"text":"ray2: "},{"storage":"ray2:api","nbt":"result"}]
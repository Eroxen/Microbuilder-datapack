#####################################################################
# internal/start/get_init_pos.mcfunction
# written by Eroxen
# scoreboard output:
# - #ray2.l.x, .y, .z ray2.calc : direction vector of the raycast
# - #ray2.l.sign.x, .y, .z ray2.calc : direction vector signs
# - #ray2.block.x, .y, .z ray2.calc : initial block positions
# - #ray2.init_pos.x, .y, .z ray2.calc : initial sub-block positions
# - #ray2.most_sig_axis ray2.calc : most significant axis
# - #ray2.next_block_entry.x, .y, .z ray2.calc : sub-block position where the next block will be entered
#####################################################################

data modify storage ray2:calc root.init.pos0 set from entity @s Pos
tp @s ^ ^ ^1
data modify storage ray2:calc root.init.pos1 set from entity @s Pos
kill @s

# get direction vector
execute store result score #ray2.temp.x ray2.calc run data get storage ray2:calc root.init.pos0[0] 1000
execute store result score #ray2.temp.y ray2.calc run data get storage ray2:calc root.init.pos0[1] 1000
execute store result score #ray2.temp.z ray2.calc run data get storage ray2:calc root.init.pos0[2] 1000
execute store result score #ray2.l.x ray2.calc run data get storage ray2:calc root.init.pos1[0] 1000
execute store result score #ray2.l.y ray2.calc run data get storage ray2:calc root.init.pos1[1] 1000
execute store result score #ray2.l.z ray2.calc run data get storage ray2:calc root.init.pos1[2] 1000
scoreboard players operation #ray2.l.x ray2.calc -= #ray2.temp.x ray2.calc
scoreboard players operation #ray2.l.y ray2.calc -= #ray2.temp.y ray2.calc
scoreboard players operation #ray2.l.z ray2.calc -= #ray2.temp.z ray2.calc

# get initial sub-block pos and block pos
scoreboard players operation #ray2.init_pos.x ray2.calc = #ray2.temp.x ray2.calc
scoreboard players operation #ray2.init_pos.y ray2.calc = #ray2.temp.y ray2.calc
scoreboard players operation #ray2.init_pos.z ray2.calc = #ray2.temp.z ray2.calc
scoreboard players set #ray2.temp.op ray2.calc 1000
scoreboard players operation #ray2.temp.x ray2.calc /= #ray2.temp.op ray2.calc
scoreboard players operation #ray2.temp.y ray2.calc /= #ray2.temp.op ray2.calc
scoreboard players operation #ray2.temp.z ray2.calc /= #ray2.temp.op ray2.calc
scoreboard players operation #ray2.block.x ray2.calc = #ray2.temp.x ray2.calc
scoreboard players operation #ray2.block.y ray2.calc = #ray2.temp.y ray2.calc
scoreboard players operation #ray2.block.z ray2.calc = #ray2.temp.z ray2.calc
scoreboard players operation #ray2.temp.x ray2.calc *= #ray2.temp.op ray2.calc
scoreboard players operation #ray2.temp.y ray2.calc *= #ray2.temp.op ray2.calc
scoreboard players operation #ray2.temp.z ray2.calc *= #ray2.temp.op ray2.calc
scoreboard players operation #ray2.init_pos.x ray2.calc -= #ray2.temp.x ray2.calc
scoreboard players operation #ray2.init_pos.y ray2.calc -= #ray2.temp.y ray2.calc
scoreboard players operation #ray2.init_pos.z ray2.calc -= #ray2.temp.z ray2.calc

# get direction signs
scoreboard players set #ray2.l.sign.x ray2.calc 1
scoreboard players set #ray2.l.sign.y ray2.calc 1
scoreboard players set #ray2.l.sign.z ray2.calc 1
execute if score #ray2.l.x ray2.calc matches ..-1 run scoreboard players set #ray2.l.sign.x ray2.calc -1
execute if score #ray2.l.y ray2.calc matches ..-1 run scoreboard players set #ray2.l.sign.y ray2.calc -1
execute if score #ray2.l.z ray2.calc matches ..-1 run scoreboard players set #ray2.l.sign.z ray2.calc -1

# get most significant axis
scoreboard players operation #ray2.temp.x ray2.calc = #ray2.l.x ray2.calc
scoreboard players operation #ray2.temp.y ray2.calc = #ray2.l.y ray2.calc
scoreboard players operation #ray2.temp.z ray2.calc = #ray2.l.z ray2.calc
scoreboard players operation #ray2.temp.x ray2.calc *= #ray2.l.sign.x ray2.calc
scoreboard players operation #ray2.temp.y ray2.calc *= #ray2.l.sign.y ray2.calc
scoreboard players operation #ray2.temp.z ray2.calc *= #ray2.l.sign.z ray2.calc
scoreboard players operation #ray2.temp.max ray2.calc = #ray2.temp.x ray2.calc
execute if score #ray2.temp.y ray2.calc > #ray2.temp.max ray2.calc run scoreboard players operation #ray2.temp.max ray2.calc = #ray2.temp.y ray2.calc
execute if score #ray2.temp.z ray2.calc > #ray2.temp.max ray2.calc run scoreboard players operation #ray2.temp.max ray2.calc = #ray2.temp.z ray2.calc
execute if score #ray2.temp.x ray2.calc = #ray2.temp.max ray2.calc run scoreboard players set #ray2.most_sig_axis ray2.calc 0
execute if score #ray2.temp.y ray2.calc = #ray2.temp.max ray2.calc run scoreboard players set #ray2.most_sig_axis ray2.calc 1
execute if score #ray2.temp.z ray2.calc = #ray2.temp.max ray2.calc run scoreboard players set #ray2.most_sig_axis ray2.calc 2

# get next block entry
scoreboard players operation #ray2.next_block_entry.x ray2.calc = #ray2.l.sign.x ray2.calc
scoreboard players operation #ray2.next_block_entry.y ray2.calc = #ray2.l.sign.y ray2.calc
scoreboard players operation #ray2.next_block_entry.z ray2.calc = #ray2.l.sign.z ray2.calc
scoreboard players set #ray2.temp.op ray2.calc 0
scoreboard players operation #ray2.next_block_entry.x ray2.calc > #ray2.temp.op ray2.calc
scoreboard players operation #ray2.next_block_entry.y ray2.calc > #ray2.temp.op ray2.calc
scoreboard players operation #ray2.next_block_entry.z ray2.calc > #ray2.temp.op ray2.calc
scoreboard players set #ray2.temp.op ray2.calc 1000
scoreboard players operation #ray2.next_block_entry.x ray2.calc *= #ray2.temp.op ray2.calc
scoreboard players operation #ray2.next_block_entry.y ray2.calc *= #ray2.temp.op ray2.calc
scoreboard players operation #ray2.next_block_entry.z ray2.calc *= #ray2.temp.op ray2.calc


execute if score #ray2.debug ray2.calc matches 2.. run tellraw @a ["",{"text":"ray2 init: "},{"score":{"name":"#ray2.l.x","objective":"ray2.calc"},"color":"red"},{"text":" "},{"score":{"name":"#ray2.l.y","objective":"ray2.calc"},"color":"green"},{"text":" "},{"score":{"name":"#ray2.l.z","objective":"ray2.calc"},"color":"#9999FF"},{"text":"\n"},{"text":" most significant axis: "},{"score":{"name":"#ray2.most_sig_axis","objective":"ray2.calc"},"color":"light_purple"},{"text":"\n"},{"text":" init sub-block pos: "},{"score":{"name":"#ray2.init_pos.x","objective":"ray2.calc"},"color":"red"},{"text":" "},{"score":{"name":"#ray2.init_pos.y","objective":"ray2.calc"},"color":"green"},{"text":" "},{"score":{"name":"#ray2.init_pos.z","objective":"ray2.calc"},"color":"#9999FF"},{"text":"\n"},{"text":" init block pos: "},{"score":{"name":"#ray2.block.x","objective":"ray2.calc"},"color":"red"},{"text":" "},{"score":{"name":"#ray2.block.y","objective":"ray2.calc"},"color":"green"},{"text":" "},{"score":{"name":"#ray2.block.z","objective":"ray2.calc"},"color":"#9999FF"},{"text":"\n"},{"text":" next block entry: "},{"score":{"name":"#ray2.next_block_entry.x","objective":"ray2.calc"},"color":"red"},{"text":" "},{"score":{"name":"#ray2.next_block_entry.y","objective":"ray2.calc"},"color":"green"},{"text":" "},{"score":{"name":"#ray2.next_block_entry.z","objective":"ray2.calc"},"color":"#9999FF"}]
#####################################################################
# api/multiface_intersect.mcfunction
# written by Eroxen
#
# scoreboard input:
# - #ray2.mfi.entry.x, .y, .z ray2.calc : entrypoint into the block
# - #ray2.l.x, .y, .z ray2.calc : direction vector
# - #ray2.l.sign.x, .y, .z ray2.calc : direction vector signs
# storage input:
# - ray2:calc root.mfi.data : MFI data
#   - px: data for faces that can be intercected when going in positive x direction, ny: data for faces that can be intercected when going in negative y direction, etc.
#     list of dicts with keys s and partial, must be sorted on s (high to low if nx, ny, nz, low to high if px, py, pz. sorted in the order of near to far.)
#     - s: double, x-value (for px, nx) of the face
#     - partial (optional): list of dicts with keys x, y, z
#       - x, y, z: list of [double, double] which give the limits of the face. multiple dicts allows multiple boxes on the same x-level
#
# scoreboard output:
# - #ray2.mfi.hit ray2.calc : hit the mfi
# - #ray2.mfi.axis ray2.calc : hit axis
# - #ray2.mfi.distance ray2.calc : sub-mfi distance
# - #ray2.mfi.hit.x, .y, .z ray2.calc : hit coordinates
#####################################################################

data modify storage ray2:calc root.mfi.axes set value {x:[],y:[],z:[]}
execute if score #ray2.l.sign.x ray2.calc matches -1 run data modify storage ray2:calc root.mfi.axes.x set from storage ray2:calc root.mfi.data.nx
execute if score #ray2.l.sign.x ray2.calc matches 1 run data modify storage ray2:calc root.mfi.axes.x set from storage ray2:calc root.mfi.data.px
execute if score #ray2.l.sign.y ray2.calc matches -1 run data modify storage ray2:calc root.mfi.axes.y set from storage ray2:calc root.mfi.data.ny
execute if score #ray2.l.sign.y ray2.calc matches 1 run data modify storage ray2:calc root.mfi.axes.y set from storage ray2:calc root.mfi.data.py
execute if score #ray2.l.sign.z ray2.calc matches -1 run data modify storage ray2:calc root.mfi.axes.z set from storage ray2:calc root.mfi.data.nz
execute if score #ray2.l.sign.z ray2.calc matches 1 run data modify storage ray2:calc root.mfi.axes.z set from storage ray2:calc root.mfi.data.pz

scoreboard players set #ray2.mfi.intersect.x ray2.calc 0
scoreboard players set #ray2.mfi.intersect.y ray2.calc 0
scoreboard players set #ray2.mfi.intersect.z ray2.calc 0
scoreboard players set #ray2.mfi.distance ray2.calc 999999
scoreboard players set #ray2.mfi.hit ray2.calc 0
scoreboard players operation #ray2.mfi.pos.x ray2.calc = #ray2.mfi.entry.x ray2.calc
scoreboard players operation #ray2.mfi.pos.y ray2.calc = #ray2.mfi.entry.y ray2.calc
scoreboard players operation #ray2.mfi.pos.z ray2.calc = #ray2.mfi.entry.z ray2.calc

scoreboard players set #ray2.mfi.temp.axis ray2.calc 0
execute if score #ray2.mfi.intersect.x ray2.calc matches 0 if data storage ray2:calc root.mfi.axes.x[0] run function ray2:internal/mfi/axis_loop/x
execute if score #ray2.mfi.intersect.x ray2.calc matches 1 if score #ray2.mfi.temp.distance ray2.calc < #ray2.mfi.distance ray2.calc run function ray2:internal/mfi/update_minimum_distance
scoreboard players set #ray2.mfi.temp.axis ray2.calc 1
execute if score #ray2.mfi.intersect.y ray2.calc matches 0 if data storage ray2:calc root.mfi.axes.y[0] run function ray2:internal/mfi/axis_loop/y
execute if score #ray2.mfi.intersect.y ray2.calc matches 1 if score #ray2.mfi.temp.distance ray2.calc < #ray2.mfi.distance ray2.calc run function ray2:internal/mfi/update_minimum_distance
scoreboard players set #ray2.mfi.temp.axis ray2.calc 2
execute if score #ray2.mfi.intersect.z ray2.calc matches 0 if data storage ray2:calc root.mfi.axes.z[0] run function ray2:internal/mfi/axis_loop/z
execute if score #ray2.mfi.intersect.z ray2.calc matches 1 if score #ray2.mfi.temp.distance ray2.calc < #ray2.mfi.distance ray2.calc run function ray2:internal/mfi/update_minimum_distance


execute if score #ray2.debug ray2.calc matches 2.. run tellraw @a ["",{"text":"mfi: "},{"score":{"name":"#ray2.mfi.intersect.x","objective":"ray2.calc"},"color":"red"},{"text":" "},{"score":{"name":"#ray2.mfi.intersect.y","objective":"ray2.calc"},"color":"green"},{"text":" "},{"score":{"name":"#ray2.mfi.intersect.z","objective":"ray2.calc"},"color":"#9999FF"},{"text":"\n hit: "},{"score":{"name":"#ray2.mfi.hit","objective":"ray2.calc"},"color":"light_purple"},{"text":" axis: "},{"score":{"name":"#ray2.mfi.axis","objective":"ray2.calc"},"color":"light_purple"},{"text":" d: "},{"score":{"name":"#ray2.mfi.distance","objective":"ray2.calc"},"color":"light_purple"},{"text":" @ "},{"score":{"name":"#ray2.mfi.hit.x","objective":"ray2.calc"},"color":"red"},{"text":" "},{"score":{"name":"#ray2.mfi.hit.y","objective":"ray2.calc"},"color":"green"},{"text":" "},{"score":{"name":"#ray2.mfi.hit.z","objective":"ray2.calc"},"color":"#9999FF"}]
#####################################################################
# internal/mfi/axis_face/z.mcfunction
# written by Eroxen
#####################################################################

execute store result score #ray2.mfi.temp.z ray2.calc run data get storage ray2:calc root.mfi.axes.z[0].s 1000

# face before current pos
execute if score #ray2.l.sign.z ray2.calc matches -1 if score #ray2.mfi.temp.z ray2.calc > #ray2.mfi.pos.z ray2.calc run return 0
execute if score #ray2.l.sign.z ray2.calc matches 1 if score #ray2.mfi.temp.z ray2.calc < #ray2.mfi.pos.z ray2.calc run return 0

# intersect pos
scoreboard players operation #ray2.mfi.temp.distance ray2.calc = #ray2.mfi.temp.z ray2.calc
scoreboard players operation #ray2.mfi.temp.distance ray2.calc -= #ray2.mfi.entry.z ray2.calc
scoreboard players operation #ray2.mfi.temp.distance ray2.calc *= #ray2.1000 ray2.calc
scoreboard players operation #ray2.mfi.temp.distance ray2.calc /= #ray2.l.z ray2.calc

scoreboard players operation #ray2.mfi.temp.x ray2.calc = #ray2.l.x ray2.calc
scoreboard players operation #ray2.mfi.temp.x ray2.calc *= #ray2.mfi.temp.distance ray2.calc
scoreboard players operation #ray2.mfi.temp.x ray2.calc /= #ray2.1000 ray2.calc
scoreboard players operation #ray2.mfi.temp.x ray2.calc += #ray2.mfi.entry.x ray2.calc

scoreboard players operation #ray2.mfi.temp.y ray2.calc = #ray2.l.y ray2.calc
scoreboard players operation #ray2.mfi.temp.y ray2.calc *= #ray2.mfi.temp.distance ray2.calc
scoreboard players operation #ray2.mfi.temp.y ray2.calc /= #ray2.1000 ray2.calc
scoreboard players operation #ray2.mfi.temp.y ray2.calc += #ray2.mfi.entry.y ray2.calc

# partial face
execute unless data storage ray2:calc root.mfi.axes.z[0].partial if score #ray2.mfi.temp.x ray2.calc matches 0..1000 if score #ray2.mfi.temp.y ray2.calc matches 0..1000 run return 1
execute unless data storage ray2:calc root.mfi.axes.z[0].partial run return 0

scoreboard players set #ray2.mfi.temp.partial ray2.calc 0
function ray2:internal/mfi/partial_face/z
execute if score #ray2.mfi.temp.partial ray2.calc matches 1 run return 1
return 0
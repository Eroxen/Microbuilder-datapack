#####################################################################
# internal/mfi/axis_loop/x.mcfunction
# written by Eroxen
#####################################################################

execute store result score #ray2.mfi.intersect.x ray2.calc run function ray2:internal/mfi/axis_face/x
data remove storage ray2:calc root.mfi.axes.x[0]
execute if score #ray2.mfi.intersect.x ray2.calc matches 0 if data storage ray2:calc root.mfi.axes.x[0] run function ray2:internal/mfi/axis_loop/x
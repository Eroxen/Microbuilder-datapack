#####################################################################
# internal/mfi/axis_loop/y.mcfunction
# written by Eroxen
#####################################################################

execute store result score #ray2.mfi.intersect.y ray2.calc run function ray2:internal/mfi/axis_face/y
data remove storage ray2:calc root.mfi.axes.y[0]
execute if score #ray2.mfi.intersect.y ray2.calc matches 0 if data storage ray2:calc root.mfi.axes.y[0] run function ray2:internal/mfi/axis_loop/y
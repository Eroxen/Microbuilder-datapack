#####################################################################
# internal/mfi/axis_loop/z.mcfunction
# written by Eroxen
#####################################################################

execute store result score #ray2.mfi.intersect.z ray2.calc run function ray2:internal/mfi/axis_face/z
data remove storage ray2:calc root.mfi.axes.z[0]
execute if score #ray2.mfi.intersect.z ray2.calc matches 0 if data storage ray2:calc root.mfi.axes.z[0] run function ray2:internal/mfi/axis_loop/z
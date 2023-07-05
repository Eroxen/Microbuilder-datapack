#####################################################################
# internal/mfi/partial_face/x.mcfunction
# written by Eroxen
#####################################################################

execute store result score #ray2.mfi.temp.y.min ray2.calc run data get storage ray2:calc root.mfi.axes.x[0].partial[0].y[0] 1000
execute store result score #ray2.mfi.temp.y.max ray2.calc run data get storage ray2:calc root.mfi.axes.x[0].partial[0].y[1] 1000
execute store result score #ray2.mfi.temp.z.min ray2.calc run data get storage ray2:calc root.mfi.axes.x[0].partial[0].z[0] 1000
execute store result score #ray2.mfi.temp.z.max ray2.calc run data get storage ray2:calc root.mfi.axes.x[0].partial[0].z[1] 1000

execute if data storage ray2:calc root.mfi.axes.x[0].partial[0].y if data storage ray2:calc root.mfi.axes.x[0].partial[0].z if score #ray2.mfi.temp.y ray2.calc >= #ray2.mfi.temp.y.min ray2.calc if score #ray2.mfi.temp.y ray2.calc <= #ray2.mfi.temp.y.max ray2.calc if score #ray2.mfi.temp.z ray2.calc >= #ray2.mfi.temp.z.min ray2.calc if score #ray2.mfi.temp.z ray2.calc <= #ray2.mfi.temp.z.max ray2.calc run scoreboard players set #ray2.mfi.temp.partial ray2.calc 1

execute if data storage ray2:calc root.mfi.axes.x[0].partial[0].y unless data storage ray2:calc root.mfi.axes.x[0].partial[0].z if score #ray2.mfi.temp.y ray2.calc >= #ray2.mfi.temp.y.min ray2.calc if score #ray2.mfi.temp.y ray2.calc <= #ray2.mfi.temp.y.max ray2.calc if score #ray2.mfi.temp.z ray2.calc matches 0..1000 run scoreboard players set #ray2.mfi.temp.partial ray2.calc 1

execute if data storage ray2:calc root.mfi.axes.x[0].partial[0].z unless data storage ray2:calc root.mfi.axes.x[0].partial[0].y if score #ray2.mfi.temp.z ray2.calc >= #ray2.mfi.temp.z.min ray2.calc if score #ray2.mfi.temp.z ray2.calc <= #ray2.mfi.temp.z.max ray2.calc if score #ray2.mfi.temp.y ray2.calc matches 0..1000 run scoreboard players set #ray2.mfi.temp.partial ray2.calc 1

data remove storage ray2:calc root.mfi.axes.x[0].partial[0]
execute if score #ray2.mfi.temp.partial ray2.calc matches 0 if data storage ray2:calc root.mfi.axes.x[0].partial[0] run function ray2:internal/mfi/partial_face/x
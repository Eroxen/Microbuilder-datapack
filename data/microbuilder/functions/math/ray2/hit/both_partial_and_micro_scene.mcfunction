execute store result score distance_partial microbuilder.calc run data get storage microbuilder:calc math.ray2.hit_info.partial_distance 1000
execute store result score distance_micro_scene microbuilder.calc run data get storage microbuilder:calc math.ray2.hit_info.micro_scene_distance 1000

execute if score distance_partial microbuilder.calc < distance_micro_scene microbuilder.calc run data modify storage microbuilder:calc math.ray2.hit_info.face_normal set from storage microbuilder:calc math.ray2.hit_info.partial_face_normal
execute if score distance_partial microbuilder.calc < distance_micro_scene microbuilder.calc run data modify storage microbuilder:calc math.ray2.hit_info.Pos set from storage microbuilder:calc math.ray2.hit_info.partial_Pos
execute if score distance_partial microbuilder.calc >= distance_micro_scene microbuilder.calc run data modify storage microbuilder:calc math.ray2.hit_info.face_normal set from storage microbuilder:calc math.ray2.hit_info.micro_scene_face_normal
execute if score distance_partial microbuilder.calc >= distance_micro_scene microbuilder.calc run data modify storage microbuilder:calc math.ray2.hit_info.Pos set from storage microbuilder:calc math.ray2.hit_info.micro_scene_Pos

data modify entity @s Pos set from storage microbuilder:calc math.ray2.hit_info.Pos
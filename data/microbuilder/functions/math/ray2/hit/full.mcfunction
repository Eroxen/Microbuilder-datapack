execute if score d_n_x microbuilder.calc = d_min microbuilder.calc if score d_x microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.hit_info.full_face_normal set value {x:1}
execute if score d_n_x microbuilder.calc = d_min microbuilder.calc if score d_x microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.hit_info.full_face_normal set value {x:-1}
execute if score d_n_y microbuilder.calc = d_min microbuilder.calc if score d_y microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.hit_info.full_face_normal set value {y:1}
execute if score d_n_y microbuilder.calc = d_min microbuilder.calc if score d_y microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.hit_info.full_face_normal set value {y:-1}
execute if score d_n_z microbuilder.calc = d_min microbuilder.calc if score d_z microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.hit_info.full_face_normal set value {z:1}
execute if score d_n_z microbuilder.calc = d_min microbuilder.calc if score d_z microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.hit_info.full_face_normal set value {z:-1}

data modify storage microbuilder:calc math.ray2 merge value {hit:1b,stop:1b}
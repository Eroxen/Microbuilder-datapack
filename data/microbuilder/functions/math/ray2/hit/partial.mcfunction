###
# intersection data
# px: data for faces that can be intercected when going in positive x direction, ny: data for faces that can be intercected when going in negative y direction, etc.
# list of dicts with keys s and partial, must be sorted on s (high to low if nx, ny, nz, low to high if px, py, pz. sorted in the order of near to far.)
# s: double, x-value (for px, nx) of the face
# partial (optional): list of dicts with keys x, y, z
# x, y, z: list of [double, double] which give the limits of the face. multiple dicts allows multiple boxes on the same x-level
###
data modify storage microbuilder:calc math.ray2.partial_int set value {px:[],nx:[],py:[],ny:[],pz:[],nz:[]}

data modify storage microbuilder:calc math.ray2.partial set value {x:[],y:[],z:[]}

execute if block ~ ~ ~ #microbuilder:ray2/generated/group_redstone_wire run function microbuilder:math/ray2/hit/partial/generated/group_redstone_wire
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_leaves run function microbuilder:math/ray2/hit/partial/generated/group_acacia_leaves
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_fire run function microbuilder:math/ray2/hit/partial/generated/group_fire
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_calibrated_sculk_sensor run function microbuilder:math/ray2/hit/partial/generated/group_calibrated_sculk_sensor
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_andesite_wall run function microbuilder:math/ray2/hit/partial/generated/group_andesite_wall
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_tripwire run function microbuilder:math/ray2/hit/partial/generated/group_tripwire
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_glow_lichen run function microbuilder:math/ray2/hit/partial/generated/group_glow_lichen
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_stairs run function microbuilder:math/ray2/hit/partial/generated/group_acacia_stairs
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_trapdoor run function microbuilder:math/ray2/hit/partial/generated/group_acacia_trapdoor
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_hanging_sign run function microbuilder:math/ray2/hit/partial/generated/group_acacia_hanging_sign
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_door run function microbuilder:math/ray2/hit/partial/generated/group_acacia_door
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_comparator run function microbuilder:math/ray2/hit/partial/generated/group_comparator
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_chorus_plant run function microbuilder:math/ray2/hit/partial/generated/group_chorus_plant
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_cactus run function microbuilder:math/ray2/hit/partial/generated/group_cactus
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_mangrove_propagule run function microbuilder:math/ray2/hit/partial/generated/group_mangrove_propagule
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_sign run function microbuilder:math/ray2/hit/partial/generated/group_acacia_sign
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_big_dripleaf run function microbuilder:math/ray2/hit/partial/generated/group_big_dripleaf
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_black_stained_glass_pane run function microbuilder:math/ray2/hit/partial/generated/group_black_stained_glass_pane
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_scaffolding run function microbuilder:math/ray2/hit/partial/generated/group_scaffolding
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_fence run function microbuilder:math/ray2/hit/partial/generated/group_acacia_fence
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_air run function microbuilder:math/ray2/hit/partial/generated/group_air
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_fence_gate run function microbuilder:math/ray2/hit/partial/generated/group_acacia_fence_gate
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_vine run function microbuilder:math/ray2/hit/partial/generated/group_vine
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_campfire run function microbuilder:math/ray2/hit/partial/generated/group_campfire
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_daylight_detector run function microbuilder:math/ray2/hit/partial/generated/group_daylight_detector
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_bell run function microbuilder:math/ray2/hit/partial/generated/group_bell
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_weeping_vines run function microbuilder:math/ray2/hit/partial/generated/group_weeping_vines
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_twisting_vines run function microbuilder:math/ray2/hit/partial/generated/group_twisting_vines
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_kelp run function microbuilder:math/ray2/hit/partial/generated/group_kelp
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_lever run function microbuilder:math/ray2/hit/partial/generated/group_lever
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_button run function microbuilder:math/ray2/hit/partial/generated/group_acacia_button
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_chest run function microbuilder:math/ray2/hit/partial/generated/group_chest
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_end_rod run function microbuilder:math/ray2/hit/partial/generated/group_end_rod
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_activator_rail run function microbuilder:math/ray2/hit/partial/generated/group_activator_rail
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_piston_head run function microbuilder:math/ray2/hit/partial/generated/group_piston_head
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_pointed_dripstone run function microbuilder:math/ray2/hit/partial/generated/group_pointed_dripstone
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_rail run function microbuilder:math/ray2/hit/partial/generated/group_rail
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_tripwire_hook run function microbuilder:math/ray2/hit/partial/generated/group_tripwire_hook
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_heavy_weighted_pressure_plate run function microbuilder:math/ray2/hit/partial/generated/group_heavy_weighted_pressure_plate
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_piglin_head run function microbuilder:math/ray2/hit/partial/generated/group_piglin_head
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_creeper_head run function microbuilder:math/ray2/hit/partial/generated/group_creeper_head
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_black_candle run function microbuilder:math/ray2/hit/partial/generated/group_black_candle
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_black_bed run function microbuilder:math/ray2/hit/partial/generated/group_black_bed
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_lectern run function microbuilder:math/ray2/hit/partial/generated/group_lectern
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_crimson_roots run function microbuilder:math/ray2/hit/partial/generated/group_crimson_roots
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_sugar_cane run function microbuilder:math/ray2/hit/partial/generated/group_sugar_cane
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_pink_petals run function microbuilder:math/ray2/hit/partial/generated/group_pink_petals
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_piston run function microbuilder:math/ray2/hit/partial/generated/group_piston
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_turtle_egg run function microbuilder:math/ray2/hit/partial/generated/group_turtle_egg
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_cocoa run function microbuilder:math/ray2/hit/partial/generated/group_cocoa
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_amethyst_cluster run function microbuilder:math/ray2/hit/partial/generated/group_amethyst_cluster
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_large_amethyst_bud run function microbuilder:math/ray2/hit/partial/generated/group_large_amethyst_bud
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_medium_amethyst_bud run function microbuilder:math/ray2/hit/partial/generated/group_medium_amethyst_bud
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_small_amethyst_bud run function microbuilder:math/ray2/hit/partial/generated/group_small_amethyst_bud
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_grindstone run function microbuilder:math/ray2/hit/partial/generated/group_grindstone
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_bamboo run function microbuilder:math/ray2/hit/partial/generated/group_bamboo
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_hopper run function microbuilder:math/ray2/hit/partial/generated/group_hopper
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_pitcher_crop run function microbuilder:math/ray2/hit/partial/generated/group_pitcher_crop
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_composter run function microbuilder:math/ray2/hit/partial/generated/group_composter
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_snow run function microbuilder:math/ray2/hit/partial/generated/group_snow
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_sea_pickle run function microbuilder:math/ray2/hit/partial/generated/group_sea_pickle
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_brain_coral_wall_fan run function microbuilder:math/ray2/hit/partial/generated/group_brain_coral_wall_fan
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_wall_hanging_sign run function microbuilder:math/ray2/hit/partial/generated/group_acacia_wall_hanging_sign
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_wall_sign run function microbuilder:math/ray2/hit/partial/generated/group_acacia_wall_sign
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_redstone_wall_torch run function microbuilder:math/ray2/hit/partial/generated/group_redstone_wall_torch
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_carrots run function microbuilder:math/ray2/hit/partial/generated/group_carrots
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_wheat run function microbuilder:math/ray2/hit/partial/generated/group_wheat
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_end_portal_frame run function microbuilder:math/ray2/hit/partial/generated/group_end_portal_frame
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_dirt_path run function microbuilder:math/ray2/hit/partial/generated/group_dirt_path
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_brewing_stand run function microbuilder:math/ray2/hit/partial/generated/group_brewing_stand
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_melon_stem run function microbuilder:math/ray2/hit/partial/generated/group_melon_stem
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_ladder run function microbuilder:math/ray2/hit/partial/generated/group_ladder
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_big_dripleaf_stem run function microbuilder:math/ray2/hit/partial/generated/group_big_dripleaf_stem
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_ender_chest run function microbuilder:math/ray2/hit/partial/generated/group_ender_chest
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_cake run function microbuilder:math/ray2/hit/partial/generated/group_cake
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_slab run function microbuilder:math/ray2/hit/partial/generated/group_acacia_slab
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_chain run function microbuilder:math/ray2/hit/partial/generated/group_chain
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_black_wall_banner run function microbuilder:math/ray2/hit/partial/generated/group_black_wall_banner
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_lantern run function microbuilder:math/ray2/hit/partial/generated/group_lantern
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_sweet_berry_bush run function microbuilder:math/ray2/hit/partial/generated/group_sweet_berry_bush
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_beetroots run function microbuilder:math/ray2/hit/partial/generated/group_beetroots
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_creeper_wall_head run function microbuilder:math/ray2/hit/partial/generated/group_creeper_wall_head
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_anvil run function microbuilder:math/ray2/hit/partial/generated/group_anvil
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_piglin_wall_head run function microbuilder:math/ray2/hit/partial/generated/group_piglin_wall_head
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_nether_wart run function microbuilder:math/ray2/hit/partial/generated/group_nether_wart
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_attached_melon_stem run function microbuilder:math/ray2/hit/partial/generated/group_attached_melon_stem
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_cauldron run function microbuilder:math/ray2/hit/partial/generated/group_cauldron
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_sniffer_egg run function microbuilder:math/ray2/hit/partial/generated/group_sniffer_egg
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_pressure_plate run function microbuilder:math/ray2/hit/partial/generated/group_acacia_pressure_plate
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_black_candle_cake run function microbuilder:math/ray2/hit/partial/generated/group_black_candle_cake
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_brain_coral_fan run function microbuilder:math/ray2/hit/partial/generated/group_brain_coral_fan
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_brain_coral run function microbuilder:math/ray2/hit/partial/generated/group_brain_coral
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_nether_portal run function microbuilder:math/ray2/hit/partial/generated/group_nether_portal
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_conduit run function microbuilder:math/ray2/hit/partial/generated/group_conduit
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_redstone_torch run function microbuilder:math/ray2/hit/partial/generated/group_redstone_torch
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_acacia_sapling run function microbuilder:math/ray2/hit/partial/generated/group_acacia_sapling
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_hanging_roots run function microbuilder:math/ray2/hit/partial/generated/group_hanging_roots
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_torchflower_crop run function microbuilder:math/ray2/hit/partial/generated/group_torchflower_crop
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_brown_mushroom run function microbuilder:math/ray2/hit/partial/generated/group_brown_mushroom
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_frogspawn run function microbuilder:math/ray2/hit/partial/generated/group_frogspawn
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_allium run function microbuilder:math/ray2/hit/partial/generated/group_allium
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_spore_blossom run function microbuilder:math/ray2/hit/partial/generated/group_spore_blossom
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_azalea run function microbuilder:math/ray2/hit/partial/generated/group_azalea
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_black_carpet run function microbuilder:math/ray2/hit/partial/generated/group_black_carpet
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_lily_pad run function microbuilder:math/ray2/hit/partial/generated/group_lily_pad
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_enchanting_table run function microbuilder:math/ray2/hit/partial/generated/group_enchanting_table
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_end_portal run function microbuilder:math/ray2/hit/partial/generated/group_end_portal
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_crimson_fungus run function microbuilder:math/ray2/hit/partial/generated/group_crimson_fungus
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_nether_sprouts run function microbuilder:math/ray2/hit/partial/generated/group_nether_sprouts
execute if block ~ ~ ~ #microbuilder:ray2/generated/group_bamboo_sapling run function microbuilder:math/ray2/hit/partial/generated/group_bamboo_sapling

execute if score d_x microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.partial.x set from storage microbuilder:calc math.ray2.partial_int.nx
execute if score d_x microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.partial.x set from storage microbuilder:calc math.ray2.partial_int.px
execute if score d_y microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.partial.y set from storage microbuilder:calc math.ray2.partial_int.ny
execute if score d_y microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.partial.y set from storage microbuilder:calc math.ray2.partial_int.py
execute if score d_z microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.partial.z set from storage microbuilder:calc math.ray2.partial_int.nz
execute if score d_z microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.partial.z set from storage microbuilder:calc math.ray2.partial_int.pz


scoreboard players operation partial_x microbuilder.calc = precise_x microbuilder.calc
scoreboard players operation partial_y microbuilder.calc = precise_y microbuilder.calc
scoreboard players operation partial_z microbuilder.calc = precise_z microbuilder.calc
scoreboard players operation base microbuilder.calc = block_x microbuilder.calc
scoreboard players operation base microbuilder.calc *= precision microbuilder.calc
scoreboard players operation partial_x microbuilder.calc -= base microbuilder.calc
scoreboard players operation base microbuilder.calc = block_y microbuilder.calc
scoreboard players operation base microbuilder.calc *= precision microbuilder.calc
scoreboard players operation partial_y microbuilder.calc -= base microbuilder.calc
scoreboard players operation base microbuilder.calc = block_z microbuilder.calc
scoreboard players operation base microbuilder.calc *= precision microbuilder.calc
scoreboard players operation partial_z microbuilder.calc -= base microbuilder.calc

scoreboard players set partial_d_min microbuilder.calc 999999999
scoreboard players set partial_d_x microbuilder.calc -1
scoreboard players set partial_d_y microbuilder.calc -1
scoreboard players set partial_d_z microbuilder.calc -1

scoreboard players set hit_partial microbuilder.calc 0
scoreboard players set hit_partial_x microbuilder.calc 0
scoreboard players set hit_partial_y microbuilder.calc 0
scoreboard players set hit_partial_z microbuilder.calc 0

execute if data storage microbuilder:calc math.ray2.partial.x[0] run function microbuilder:math/ray2/hit/partial/intersect_x_loop
execute if data storage microbuilder:calc math.ray2.partial.y[0] run function microbuilder:math/ray2/hit/partial/intersect_y_loop
execute if data storage microbuilder:calc math.ray2.partial.z[0] run function microbuilder:math/ray2/hit/partial/intersect_z_loop
execute if score hit_partial_x microbuilder.calc matches 1 run scoreboard players set hit_partial microbuilder.calc 1
execute if score hit_partial_y microbuilder.calc matches 1 run scoreboard players set hit_partial microbuilder.calc 1
execute if score hit_partial_z microbuilder.calc matches 1 run scoreboard players set hit_partial microbuilder.calc 1

execute if score hit_partial microbuilder.calc matches 1 run function microbuilder:math/ray2/hit/partial/hit
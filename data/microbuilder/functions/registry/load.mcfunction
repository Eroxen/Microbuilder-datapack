function microbuilder:registry/load/blocks

data modify storage microbuilder:registry properties set value []
data modify storage microbuilder:registry properties append value {type:"single_state_full",states:[{full:1b}]}

data modify storage microbuilder:registry properties append value {type:"slab",states:[{Properties:{type:"bottom"},can_add:1b,partial:{px:[{s:0.0,partial:[{y:[0.0,0.5]}]}],py:[{s:0.0}],pz:[{s:0.0,partial:[{y:[0.0,0.5]}]}],nx:[{s:1.0,partial:[{y:[0.0,0.5]}]}],ny:[{s:0.5}],nz:[{s:1.0,partial:[{y:[0.0,0.5]}]}]}},{Properties:{type:"top"},can_add:1b,partial:{px:[{s:0.0,partial:[{y:[0.5,1.0]}]}],py:[{s:0.5}],pz:[{s:0.0,partial:[{y:[0.5,1.0]}]}],nx:[{s:1.0,partial:[{y:[0.5,1.0]}]}],ny:[{s:1.0}],nz:[{s:1.0,partial:[{y:[0.5,1.0]}]}]}},{Properties:{type:"double"},drop_count:2b,can_add:0b,full:1b}]}

data modify storage microbuilder:registry properties append value {type:"pillar",states:[{Properties:{axis:"x"},full:1b},{Properties:{axis:"y"},full:1b},{Properties:{axis:"z"},full:1b}]}

data modify storage microbuilder:registry properties append value {type:"horizontally_rotatable_inv",states:[{Properties:{facing:"north"},full:1b},{Properties:{facing:"east"},full:1b},{Properties:{facing:"south"},full:1b},{Properties:{facing:"west"},full:1b}]}
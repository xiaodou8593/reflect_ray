#reflect_ray:test/scene_3

setblock 6 -60 7 minecraft:white_stained_glass
setblock 6 -59 7 minecraft:white_stained_glass
setblock 6 -60 11 minecraft:white_stained_glass
setblock 6 -59 11 minecraft:white_stained_glass
setblock 6 -61 10 minecraft:white_stained_glass
setblock 6 -61 8 minecraft:white_stained_glass
setblock 6 -58 11 minecraft:white_stained_glass
setblock 6 -58 7 minecraft:white_stained_glass
fill 6 -57 7 6 -57 11 minecraft:white_stained_glass
fill 6 -60 8 6 -59 10 air

data modify storage reflect_ray:io input set from storage reflect_ray:class example
data modify storage reflect_ray:io input.rate set value 20
data modify storage reflect_ray:io input.duration set value 100
execute positioned 6.5 -59.0 10.0 rotated 0.0 45.0 run function reflect_ray:_new
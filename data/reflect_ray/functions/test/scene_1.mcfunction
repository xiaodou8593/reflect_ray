#reflect_ray:test/scene_1

setblock 6 -56 5 white_stained_glass
setblock 6 -57 5 air
setblock 6 -58 5 air
setblock 6 -59 5 air
setblock 6 -60 5 air
setblock 6 -61 5 white_stained_glass

data modify storage reflect_ray:io input set from storage reflect_ray:class example
data modify storage reflect_ray:io input.rate set value 20
data modify storage reflect_ray:io input.duration set value 100
execute positioned 6 -57 5 rotated 0.0 90.0 run function reflect_ray:_new
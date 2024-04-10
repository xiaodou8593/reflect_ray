#reflect_ray:test/scene_5

data modify storage reflect_ray:io input set from storage reflect_ray:class example
data modify storage reflect_ray:io input.rate set value 20
data modify storage reflect_ray:io input.duration set value 100
execute positioned 6.5 -57.5 17.5 rotated 45.0 -35.264435 run function reflect_ray:_new
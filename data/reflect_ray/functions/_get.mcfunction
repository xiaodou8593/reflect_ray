#reflect_ray:_get
# 临时化激光

data modify storage reflect_ray:io {} merge from entity @s data
execute store result score reflect_ray_loop int run data get storage reflect_ray:io rate
execute store result score x int run data get storage reflect_ray:io pos[0] 10000
execute store result score y int run data get storage reflect_ray:io pos[1] 10000
execute store result score z int run data get storage reflect_ray:io pos[2] 10000
execute store result score x_res int run data get storage reflect_ray:io pos_res[0]
execute store result score y_res int run data get storage reflect_ray:io pos_res[1]
execute store result score z_res int run data get storage reflect_ray:io pos_res[2]
execute store result score fvec_x int run data get storage reflect_ray:io fvec[0]
execute store result score fvec_y int run data get storage reflect_ray:io fvec[1]
execute store result score fvec_z int run data get storage reflect_ray:io fvec[2]
execute store result score fvec_res_x int run data get storage reflect_ray:io fvec_res[0]
execute store result score fvec_res_y int run data get storage reflect_ray:io fvec_res[1]
execute store result score fvec_res_z int run data get storage reflect_ray:io fvec_res[2]
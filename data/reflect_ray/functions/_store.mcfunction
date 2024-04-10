#reflect_ray:_store
# 储存化激光

execute store result storage reflect_ray:io pos[0] double 0.0001 run scoreboard players get x int
execute store result storage reflect_ray:io pos[1] double 0.0001 run scoreboard players get y int
execute store result storage reflect_ray:io pos[2] double 0.0001 run scoreboard players get z int
data modify entity @s data.pos set from storage reflect_ray:io pos
execute store result storage reflect_ray:io pos_res[0] int 1 run scoreboard players get x_res int
execute store result storage reflect_ray:io pos_res[1] int 1 run scoreboard players get y_res int
execute store result storage reflect_ray:io pos_res[2] int 1 run scoreboard players get z_res int
data modify entity @s data.pos_res set from storage reflect_ray:io pos_res
execute store result storage reflect_ray:io fvec[0] int 1 run scoreboard players get fvec_x int
execute store result storage reflect_ray:io fvec[1] int 1 run scoreboard players get fvec_y int
execute store result storage reflect_ray:io fvec[2] int 1 run scoreboard players get fvec_z int
data modify entity @s data.fvec set from storage reflect_ray:io fvec
execute store result storage reflect_ray:io fvec_res[0] int 1 run scoreboard players get fvec_res_x int
execute store result storage reflect_ray:io fvec_res[1] int 1 run scoreboard players get fvec_res_y int
execute store result storage reflect_ray:io fvec_res[2] int 1 run scoreboard players get fvec_res_z int
data modify entity @s data.fvec_res set from storage reflect_ray:io fvec_res
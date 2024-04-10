#reflect_ray:reflect_z

execute store result storage reflect_ray:io pos[2] double 0.0001 run scoreboard players operation cur_z int = z int
scoreboard players operation cur_z_res int = z_res int

scoreboard players operation fvec_z int *= 10000 int
scoreboard players operation fvec_z int += fvec_res_z int
scoreboard players operation fvec_z int *= -1 int
scoreboard players operation fvec_res_z int = fvec_z int
scoreboard players operation fvec_z int /= 10000 int
scoreboard players operation fvec_res_z int %= 10000 int
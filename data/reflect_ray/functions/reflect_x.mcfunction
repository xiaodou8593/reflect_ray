#reflect_ray:reflect_x

execute store result storage reflect_ray:io pos[0] double 0.0001 run scoreboard players operation cur_x int = x int
scoreboard players operation cur_x_res int = x_res int

scoreboard players operation fvec_x int *= 10000 int
scoreboard players operation fvec_x int += fvec_res_x int
scoreboard players operation fvec_x int *= -1 int
scoreboard players operation fvec_res_x int = fvec_x int
scoreboard players operation fvec_x int /= 10000 int
scoreboard players operation fvec_res_x int %= 10000 int
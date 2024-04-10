#reflect_ray:reflect_y

execute store result storage reflect_ray:io pos[1] double 0.0001 run scoreboard players operation cur_y int = y int
scoreboard players operation cur_y_res int = y_res int

scoreboard players operation fvec_y int *= 10000 int
scoreboard players operation fvec_y int += fvec_res_y int
scoreboard players operation fvec_y int *= -1 int
scoreboard players operation fvec_res_y int = fvec_y int
scoreboard players operation fvec_y int /= 10000 int
scoreboard players operation fvec_res_y int %= 10000 int
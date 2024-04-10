#reflect_ray:loop

$particle $(particle) ~ ~ ~ 0 0 0 0 1 force @a

scoreboard players operation cur_x_res int = x_res int
scoreboard players operation cur_x_res int += fvec_res_x int
scoreboard players operation sstemp int = cur_x_res int
scoreboard players operation cur_x_res int %= 10000 int
scoreboard players operation sstemp int /= 10000 int
scoreboard players operation cur_x int = x int
scoreboard players operation cur_x int += fvec_x int
execute store result storage reflect_ray:io pos[0] double 0.0001 run scoreboard players operation cur_x int += sstemp int
data modify entity @s Pos set from storage reflect_ray:io pos
execute at @s unless block ~ ~ ~ #reflect_ray:pass run function reflect_ray:reflect_x
scoreboard players operation x int = cur_x int
scoreboard players operation x_res int = cur_x_res int

scoreboard players operation cur_y_res int = y_res int
scoreboard players operation cur_y_res int += fvec_res_y int
scoreboard players operation sstemp int = cur_y_res int
scoreboard players operation cur_y_res int %= 10000 int
scoreboard players operation sstemp int /= 10000 int
scoreboard players operation cur_y int = y int
scoreboard players operation cur_y int += fvec_y int
execute store result storage reflect_ray:io pos[1] double 0.0001 run scoreboard players operation cur_y int += sstemp int
data modify entity @s Pos set from storage reflect_ray:io pos
execute at @s unless block ~ ~ ~ #reflect_ray:pass run function reflect_ray:reflect_y
scoreboard players operation y int = cur_y int
scoreboard players operation y_res int = cur_y_res int

scoreboard players operation cur_z_res int = z_res int
scoreboard players operation cur_z_res int += fvec_res_z int
scoreboard players operation sstemp int = cur_z_res int
scoreboard players operation cur_z_res int %= 10000 int
scoreboard players operation sstemp int /= 10000 int
scoreboard players operation cur_z int = z int
scoreboard players operation cur_z int += fvec_z int
execute store result storage reflect_ray:io pos[2] double 0.0001 run scoreboard players operation cur_z int += sstemp int
data modify entity @s Pos set from storage reflect_ray:io pos
execute at @s unless block ~ ~ ~ #reflect_ray:pass run function reflect_ray:reflect_z
scoreboard players operation z int = cur_z int
scoreboard players operation z_res int = cur_z_res int

data modify entity @s Pos set from storage reflect_ray:io pos


# 递归前进
scoreboard players remove reflect_ray_loop int 1
execute if score reflect_ray_loop int matches 1.. at @s run function reflect_ray:loop with storage reflect_ray:io {}
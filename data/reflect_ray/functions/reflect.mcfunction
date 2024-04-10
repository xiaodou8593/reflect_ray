#reflect_ray:reflect

tellraw @a "reflect"
scoreboard players add reflect_cnt int 1

function reflect_ray:redirection

# 重新计算方向
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation fvec_x int *= res_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation fvec_y int *= res_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation fvec_z int *= res_z int

execute if score reflect_cnt int matches 1 run scoreboard players set reflect_ray_loop int 1
execute if score reflect_cnt int matches 1 run scoreboard players set @s reflect_ray_duration 1
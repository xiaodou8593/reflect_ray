#reflect_ray/set

# 设置激光属性
tp @s ~ ~ ~ ~ ~
data modify entity @s data.pos set from entity @s Pos
data modify entity @s data.pos_res set value [0,0,0]
data modify entity @s data merge from storage reflect_ray:io input
execute at @s positioned 0.0 0.0 0.0 run function reflect_ray:get_forward with storage reflect_ray:io input
execute store result storage reflect_ray:io fvec[0] int 1 run scoreboard players get fvec_x int
execute store result storage reflect_ray:io fvec[1] int 1 run scoreboard players get fvec_y int
execute store result storage reflect_ray:io fvec[2] int 1 run scoreboard players get fvec_z int
data modify entity @s data.fvec set from storage reflect_ray:io fvec
execute store result storage reflect_ray:io fvec_res[0] int 1 run scoreboard players get fvec_res_x int
execute store result storage reflect_ray:io fvec_res[1] int 1 run scoreboard players get fvec_res_y int
execute store result storage reflect_ray:io fvec_res[2] int 1 run scoreboard players get fvec_res_z int
data modify entity @s data.fvec_res set from storage reflect_ray:io fvec_res

# 加载清除时间
execute store result score @s reflect_ray_duration run data get storage reflect_ray:io input.duration

tp @s 0 0 0

data modify entity @s Tags set value ["reflect_ray"]
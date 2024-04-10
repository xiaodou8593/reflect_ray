#reflect_ray:get_forward
$tp @s ^ ^ ^$(step)
data modify storage math:io xyz set from entity @s Pos
execute store result score fvec_x int run data get storage math:io xyz[0] 100000000
execute store result score fvec_y int run data get storage math:io xyz[1] 100000000
execute store result score fvec_z int run data get storage math:io xyz[2] 100000000

scoreboard players operation fvec_res_x int = fvec_x int
scoreboard players operation fvec_res_x int %= 10000 int
scoreboard players operation fvec_x int /= 10000 int

scoreboard players operation fvec_res_y int = fvec_y int
scoreboard players operation fvec_res_y int %= 10000 int
scoreboard players operation fvec_y int /= 10000 int

scoreboard players operation fvec_res_z int = fvec_z int
scoreboard players operation fvec_res_z int %= 10000 int
scoreboard players operation fvec_z int /= 10000 int
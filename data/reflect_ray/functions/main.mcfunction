#reflect_ray:main

function reflect_ray:_get
data modify entity @s Pos set from storage reflect_ray:io pos
execute at @s run function reflect_ray:loop with storage reflect_ray:io {}
function reflect_ray:_store
tp @s 0 0 0

# 计时清除激光
execute if score @s reflect_ray_duration matches 1.. run scoreboard players remove @s reflect_ray_duration 1
execute if score @s reflect_ray_duration matches 0 run kill @s
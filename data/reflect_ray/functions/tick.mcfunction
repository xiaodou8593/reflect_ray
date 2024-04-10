#reflect_ray:tick

# 激光的tick窗口
execute positioned 0 0 0 as @e[tag=reflect_ray,distance=..0.1] run function reflect_ray:main

schedule function reflect_ray:tick 1t replace
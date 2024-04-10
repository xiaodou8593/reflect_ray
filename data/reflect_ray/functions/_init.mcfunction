#reflect_ray:_init

# 主世界初始化设置
execute in minecraft:overworld run function reflect_ray:init_overworld

# 记分板设置
scoreboard objectives add reflect_ray_duration dummy
scoreboard objectives add int dummy
scoreboard players set -1 int -1
scoreboard players set 10000 int 10000

# 临时对象
data modify storage reflect_ray:io pos set value [0.0d,0.0d,0.0d]
data modify storage reflect_ray:io pos_res set value [0,0,0]
data modify storage reflect_ray:io fvec set value [0,0,0]
data modify storage reflect_ray:io fvec_res set value [0,0,0]

# 静态数据模板
data modify storage reflect_ray:class example set value {\
	particle:"dust 1 0.1 0.1 0.25",\
	rate:100,\
	duration:25,\
	step:0.01d\
}

# 主循环
schedule function reflect_ray:tick 1t replace
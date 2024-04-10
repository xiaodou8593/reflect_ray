# 激光的数据模板
```
{
	particle:"dust 1 0.1 0.1 0.25",
	rate:100,
	duration:100,
	step:0.01d
}
```

```
particle: string
	控制激光的粒子

rate: int
	控制每tick递归数量

step: double
	控制递归每步的长度

duration: int
	控制激光存在时间
```

# 手动执行初始化

```
function reflect_ray:_init
```

# 输入数据模板, 坐标, 朝向生成激光

```
data modify storage reflect_ray:io input set from storage reflect_ray:class example
execute positioned 0.0 0.0 0.0 rotated 0.0 0.0 run function reflect_ray:_new
```
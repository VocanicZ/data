execute store result entity @s Pos[0] double 0.00012207031 run scoreboard players get $motion.x sb.math
execute store result entity @s Pos[1] double 0.00012207031 run scoreboard players get $motion.y sb.math
execute store result entity @s Pos[2] double 0.00012207031 run scoreboard players get $motion.z sb.math

execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1

execute store result score $motion.unit.x sb.math run data get entity @s Pos[0] 256
execute store result score $motion.unit.y sb.math run data get entity @s Pos[1] 256
execute store result score $motion.unit.z sb.math run data get entity @s Pos[2] 256
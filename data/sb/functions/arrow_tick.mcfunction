scoreboard players add @s sb.age 1

execute store result score $motion.x sb.math run data get entity @s Motion[0] 8192
execute store result score $motion.y sb.math run data get entity @s Motion[1] 8192
execute store result score $motion.z sb.math run data get entity @s Motion[2] 8192

#Get unit vector
summon marker 0.0 0.0 0.0 {Tags:["sb.unit_vec"]}
execute as @e[type=marker,tag=sb.unit_vec] run function sb:get_unit_vector

execute if score @s sb.age matches 1 run function sb:get_speed

execute if score @s sb.age matches 2 positioned 0.0 0.0 0.0 facing entity @e[type=marker,tag=sb.unit_vec] feet positioned as @s run function sb:boom_ring_1 
execute if score @s sb.age matches 3 positioned 0.0 0.0 0.0 facing entity @e[type=marker,tag=sb.unit_vec] feet positioned as @s run function sb:boom_ring_2
execute if score @s sb.age matches 4 positioned 0.0 0.0 0.0 facing entity @e[type=marker,tag=sb.unit_vec] feet positioned as @s run function sb:boom_ring_3



execute if score @s sb.age matches 4.. run tag @s add sb.finished
execute if entity @s[nbt={inGround:1b}] run tag @s add sb.finished
kill @e[type=marker,tag=sb.unit_vec]
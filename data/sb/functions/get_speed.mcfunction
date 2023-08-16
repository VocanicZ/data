scoreboard players operation $speed.x sb.math = $motion.x sb.math
scoreboard players operation $speed.x sb.math /= $motion.unit.x sb.math
scoreboard players operation $speed.y sb.math = $motion.y sb.math
scoreboard players operation $speed.y sb.math /= $motion.unit.y sb.math
scoreboard players operation $speed.z sb.math = $motion.z sb.math
scoreboard players operation $speed.z sb.math /= $motion.unit.z sb.math

scoreboard players operation $speed sb.math = $speed.x sb.math
scoreboard players operation $speed sb.math > $speed.y sb.math
scoreboard players operation $speed sb.math > $speed.z sb.math


execute unless score $speed sb.math matches 92.. run tag @s add sb.finished
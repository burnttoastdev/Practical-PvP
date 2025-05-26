scoreboard players remove @s combat_timer 1

# updates combat timer

scoreboard players operation @s timer_seconds = @s combat_timer
scoreboard players operation @s timer_seconds /= .20 number
scoreboard players operation @s timer_seconds += .1 number

# combat timer message

title @s actionbar ["",{"text":"You are in combat for ","color":"red"},{"score":{"name":"@s","objective":"timer_seconds"},"bold":true,"color":"dark_red"},{"text":" seconds! Don't log out!","color":"red"}]

# ends combat when timer reaches 0

execute if score @s combat_timer matches ..0 run function pvp:combat_end
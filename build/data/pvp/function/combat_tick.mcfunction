scoreboard players remove @s combat_timer 1

scoreboard players operation @s combat_timer_seconds = @s combat_timer
scoreboard players operation @s combat_timer_seconds /= .20 number
scoreboard players operation @s combat_timer_seconds += .1 number

title @s actionbar ["",{"text":"You are in combat for ","color":"red"},{"score":{"name":"@s","objective":"combat_timer_seconds"},"bold":true,"color":"dark_red"},{"text":" seconds! Don't log out!","color":"red"}]

execute if score @s combat_timer matches ..0 run function pvp:end
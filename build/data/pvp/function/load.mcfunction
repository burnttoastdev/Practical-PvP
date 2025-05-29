scoreboard objectives add deaths custom:minecraft.deaths
scoreboard objectives add logged custom:minecraft.leave_game

scoreboard objectives add timer_seconds dummy
scoreboard objectives add number dummy
scoreboard objectives add combat_timer dummy

# sets scoreboards and configs

scoreboard players set .0 number 0
scoreboard players set .1 number 1
scoreboard players set .20 number 20

execute unless score .config timer_seconds >= .0 number run scoreboard players set .config timer_seconds 30

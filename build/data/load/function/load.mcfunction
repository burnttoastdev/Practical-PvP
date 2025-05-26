scoreboard objectives add logged custom:minecraft.leave_game
scoreboard objectives add deaths custom:minecraft.deaths
scoreboard objectives add combat_timer dummy
scoreboard objectives add combat_timer_seconds dummy
scoreboard objectives add number dummy
scoreboard players set .20 number 20
scoreboard players set .1 number 1
scoreboard players set .0 number 0
execute unless score .config combat_timer_seconds >= .0 number run scoreboard players set .config combat_timer_seconds 30

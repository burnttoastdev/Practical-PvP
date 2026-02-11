# runs if player did not wait through the timer before leaving combat

gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
scoreboard players set @s logged 0

# painful combat log message ->

tellraw @a ["\n",{"color":"aqua","selector":"@s"},{"text":" has died to","color":"white"}," ",{"text":"COMBAT LOGGING!","bold":true,"underlined":true,"color":"red"},"\n"]

playsound minecraft:entity.ender_dragon.ambient master @a
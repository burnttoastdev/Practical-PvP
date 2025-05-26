gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tellraw @a ["",{"selector":"@s"},{"text":" logged out during combat"}]
scoreboard players set @s logged 0
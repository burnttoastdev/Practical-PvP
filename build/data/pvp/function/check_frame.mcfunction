#
#called by: elootra:loop
#execute if entity @e[type=minecraft:item_frame,tag=!elyta_tagged] run function elootra:check_frame
#

execute as @e[type=minecraft:item_frame,tag=!elyta_tagged,nbt={Item:{id: "minecraft:elytra"}}] run data merge entity @s {Item:{id: "minecraft:dirt"}}

tag @e[type=minecraft:item_frame,tag=!elyta_tagged] add elyta_tagged
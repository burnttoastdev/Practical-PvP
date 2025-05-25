execute as @e[type=minecraft:item_frame,tag=!elyta_tagged,nbt={Item:{id: "minecraft:elytra"}}] run data merge entity @s {Item:{id: "minecraft:dirt"}}

tag @e[type=minecraft:item_frame,tag=!elyta_tagged] add elyta_tagged
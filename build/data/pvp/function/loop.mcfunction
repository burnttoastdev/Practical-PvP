execute if entity @e[type=minecraft:item_frame,tag=!elyta_tagged] run function pvp:check_frame
schedule function pvp:load 2t replace

# called every tick to check for a item frame
# if so, it's tagged to look for the elytra
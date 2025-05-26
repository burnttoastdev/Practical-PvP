execute if entity @s[advancements={pvp:attack_check=true}] as @a[nbt={HurtTime:10s}] run function pvp:combat_start
execute if entity @s[advancements={pvp:attack_check=true}] run advancement revoke @s only pvp:attack_check

# Start combat timer and adds tag
# to indicate they are in combat

scoreboard players operation .config combat_timer = .config combat_timer_seconds
scoreboard players operation .config combat_timer *= .20 number

tag @s add combat
scoreboard players operation @s combat_timer = .config combat_timer
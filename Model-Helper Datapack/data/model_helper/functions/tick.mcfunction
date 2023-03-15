# TICK (Loop)

# Enable triggers for all players
scoreboard players enable @a model_give
scoreboard players enable @a model_help
scoreboard players enable @a model_list
scoreboard players enable @a model_turn

# Check for trigger execution
execute as @a at @s unless score @s model_give matches 0 run function model_helper:commands/give
execute as @a at @s unless score @s model_help matches 0 run function model_helper:commands/help
execute as @a at @s unless score @s model_list matches 0 run function model_helper:commands/list
execute as @a at @s unless score @s model_turn matches 0 run function model_helper:commands/turn

# Rotation-Tool function
execute as @a at @s run function model_helper:rotation_tool

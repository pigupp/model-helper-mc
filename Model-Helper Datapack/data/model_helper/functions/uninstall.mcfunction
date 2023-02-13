# UNINSTALL (Remove Scoreboards)

# Remove triggers for model-"commands"
scoreboard objectives remove model_give
scoreboard objectives remove model_help
scoreboard objectives remove model_list
scoreboard objectives remove model_turn

# Remove scoreboards
scoreboard objectives remove model_rotation
scoreboard objectives remove model_tool
scoreboard objectives remove model_carrot_use
scoreboard objectives remove model_drop

# Message
tellraw @s [{"text":"Uninstall Successful!\n","color":"red","bold":true},{"text":"Now remove the datapack from the world and reload.","color":"gray","bold":false}]

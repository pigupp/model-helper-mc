# LOAD (Load/Reload)

# Add triggers for model-"commands"
scoreboard objectives add model_give trigger "trigger/give"
scoreboard objectives add model_help trigger "trigger/help"
scoreboard objectives add model_list trigger "trigger/list"
scoreboard objectives add model_turn trigger "trigger/turn"

# Add scoreboards
scoreboard objectives add model_rotation dummy "dummy/rotation"
scoreboard objectives add model_tool dummy "dummy/tool_hold"
scoreboard objectives add model_carrot_use minecraft.used:minecraft.carrot_on_a_stick "used/carrot"
scoreboard objectives add model_drop minecraft.custom:minecraft.drop "custom/drop"

# Set scoreboard constants
scoreboard players set #45 model_rotation 45

# Message
tellraw @a [{"text":"[SERVER] Models are ready to use!","color":"gray"},{"text":"\nUse \""},{"text":"/trigger model_help","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click for help"}]},"clickEvent":{"action":"run_command","value":"/trigger model_help"}},{"text":"\" for more info."}]

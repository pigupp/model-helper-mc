# Replace <NAME> with the name of the model
# Replace <ID> with the CustomModelData-ID
# tellraw @s {"text":"[<ID>]: <NAME>","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click me!"}]},"clickEvent":{"action":"run_command","value":"/trigger model_give set <ID>"}}

tellraw @s {"text":"[1]: Example","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click me!"}]},"clickEvent":{"action":"run_command","value":"/trigger model_give set 1"}}


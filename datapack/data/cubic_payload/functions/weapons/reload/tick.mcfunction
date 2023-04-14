execute store result score @s reload run data get entity @s SelectedItem.tag.GunData.Reloaded 20.05
scoreboard players add @s reload 1
function cubic_payload:weapons/update_mainhand

execute as @s at @s if score @s reload >= @s max_reload run function cubic_payload:weapons/reload/end
title @a title [{"text":"L'","color":"aqua"},{"storage":"cubic_payload:cp","nbt":"CapturePoints[0].name","color":"aqua"}]
title @a subtitle {"text":"a été capturé par l'équipe bleue !","color":"aqua"}

fill 35 61 -145 35 61 -144 light_blue_concrete
fill 35 62 -145 35 62 -144 activator_rail[shape=east_west]

data merge block 35 60 -144 {Text1:'{"storage":"cubic_payload:cp","nbt":"CapturePoints[0].name","color":"aqua","bold":true}',Text2:'{"text":"[BLEU]","color":"aqua"}'}

schedule function cubic_payload:payload/capsb 1

tellraw @a [{"text":"3","color":"gold"},{"text":" minutes ont été ajoutées.","color":"green","italic":false}]

scoreboard players add totalSec temps 180
scoreboard players add minute temps 3
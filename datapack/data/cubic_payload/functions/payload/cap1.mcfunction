title @a title [{"text":"La ","color":"aqua"},{"storage":"cubic_payload:cp","nbt":"CapturePoints[1].name","color":"aqua"}]
title @a subtitle {"text":"a été capturée par l'équipe bleue !"}

setblock 41 63 -33 minecraft:light_blue_concrete
setblock 41 64 -33 minecraft:activator_rail[shape=north_south]

data merge block 41 62 -33 {Text1:'{"storage":"cubic_payload:cp","nbt":"CapturePoints[1].name","color":"aqua","bold":true}',Text2:'{"text":"[BLEU]","color":"aqua"}'}

schedule function cubic_payload:payload/capsb 1

tellraw @a [{"text":"3","color":"gold"},{"text":" minutes ont été ajoutées.","color":"green","italic":false}]

scoreboard players add totalSec temps 180
scoreboard players add minute temps 3
#> entitylink:api/reinstall
#
#@api


data remove storage entity_link:_ id
data remove storage entity_link:_ UUID
data remove storage entity_link:_ regist_UUID
data remove storage entity_link:_ __temp__
data remove storage entity_link:_ __init__
data merge storage entity_link:_ {id:{}, UUID:{}, regist_UUID:[]}
# var:{legal_word:["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","-","+",".","_"]}

data remove storage entity_link: input
data remove storage entity_link: output
data merge storage entity_link: {input:{}, output:{}}

data remove storage 2entity_link: UUID1
data remove storage 2entity_link: UUID2
data remove storage 2entity_link: output
data remove storage 2entity_link:_ link
data remove storage 2entity_link:_ temp


data merge storage 2entity_link: {UUID1:"", UUID2:"", output:""}
data merge storage 2entity_link:_ {link:{}}


data remove storage pte_link: player_uuid
data remove storage pte_link: entity_uuid
data remove storage pte_link: output
data remove storage pte_link:_ data
data remove storage pte_link:_ temp

data merge storage pte_link: {input:{player_uuid:"", entity_uuid:""},output:""}



scoreboard objectives remove entity_link
scoreboard objectives add entity_link dummy

data modify storage entity_link:_ __init__ set value 1b
$execute if data storage pte_link: {input:{id:"*"}} run data remove storage pte_link:_ data.$(player_uuid)
$execute unless data storage pte_link: {input:{id:"*"}} run data remove storage pte_link:_ data.$(player_uuid).$(id)
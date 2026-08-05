scoreboard players set @s heartrobber_compare 0
execute if items entity @s weapon.mainhand *[custom_data={"heartrobber:type":17b}] run scoreboard players set @s heartrobber_compare 1
execute unless score @s heartrobber_compare matches 1 if items entity @s weapon.offhand *[custom_data={"heartrobber:type":17b}] run scoreboard players set @s heartrobber_compare 2
return run scoreboard players get @s heartrobber_compare
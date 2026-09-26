scoreboard players add @s[advancements={heartrobber:ate_honeylike=true,heartrobber:ate_molasses=false}] heartrobber_ate_honey 1
advancement revoke @s only heartrobber:ate_honeylike
advancement revoke @s only heartrobber:ate_molasses
scoreboard players add @s[advancements={heartrobber:ate_cookielike=true,heartrobber:ate_chocolate=false}] heartrobber_ate_cookie 1
advancement revoke @s only heartrobber:ate_cookielike
advancement revoke @s only heartrobber:ate_chocolate
execute if function heartrobber:triggered/reconcile_foods/main_dish if function heartrobber:triggered/reconcile_foods/side_dish if function heartrobber:triggered/reconcile_foods/beverage run advancement grant @s only heartrobber:husbandry/full_meal
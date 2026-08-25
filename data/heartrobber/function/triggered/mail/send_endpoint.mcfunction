$execute unless entity @p[name=$(recipient)] run return 0
$execute as @p[name=$(recipient)] run return function heartrobber:triggered/mail/bridge/send_from_temp

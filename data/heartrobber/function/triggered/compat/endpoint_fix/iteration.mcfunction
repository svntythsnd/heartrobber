execute unless data storage heartrobber:temp compat_queue[0] run return 0
function heartrobber:triggered/compat/endpoint_fix/process with storage heartrobber:temp compat_queue[0]
data remove storage heartrobber:temp compat_queue[0]
function heartrobber:triggered/compat/endpoint_fix/iteration
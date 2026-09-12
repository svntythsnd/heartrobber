execute unless data storage heartrobber:mail envelopes run return 0
data modify storage heartrobber:mail queue set from storage heartrobber:mail envelopes
data modify storage heartrobber:mail envelopes set value []
data remove storage heartrobber:mail queue[{leading_char:"$"}]
data modify storage heartrobber:mail envelopes append from storage heartrobber:mail queue[{components:{}}]
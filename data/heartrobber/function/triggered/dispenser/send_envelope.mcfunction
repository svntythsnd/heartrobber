execute unless function heartrobber:triggered/dispenser/dispensed_direction run return 0
execute unless function heartrobber:triggered/dispenser/send_envelope_op run return 0
playsound heartrobber:item.envelope.send block @a
kill
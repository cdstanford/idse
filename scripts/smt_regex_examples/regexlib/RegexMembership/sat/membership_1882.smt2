(explore-derivatives (re.++ (str.to_re "")(re.++ ((_ re.loop 4 8) (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff"))) (str.to_re ""))))

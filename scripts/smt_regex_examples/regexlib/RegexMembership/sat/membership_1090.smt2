(explore-derivatives (re.++ (str.to_re "")(re.++ (re.+ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "(" ")")(re.union (re.range "+" "+")(re.union (re.range "-" "-")(re.union (re.range "0" "9")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))))))) (str.to_re ""))))
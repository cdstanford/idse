(explore-derivatives (re.++ (str.to_re "")(re.++ ((_ re.loop 1 50) (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "'" "'")(re.union (re.range "." ".")(re.union (re.range "A" "Z")(re.union (re.range "a" "z")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))))))) (str.to_re ""))))
(explore-derivatives (re.++ (str.to_re "")(re.++ (re.+ (re.union (re.range "#" "#")(re.union (re.range "*" "*")(re.union (re.range "0" "9")(re.union (re.range "A" "D") (re.range "a" "d")))))) (str.to_re ""))))
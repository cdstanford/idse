(explore-derivatives (re.++ (str.to_re "")(re.++ (re.range "#" "#")(re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f"))))(re.++ (re.opt (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f")))) ((_ re.loop 0 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f")))))) (str.to_re ""))))))
(explore-derivatives (re.++ (str.to_re "")(re.++ (re.range "." ".")(re.++ (re.union (re.++ (re.union (re.range "R" "R") (re.range "r" "r")) (re.union (re.++ (re.union (re.range "A" "A") (re.range "a" "a")) (re.union (re.range "R" "R") (re.range "r" "r"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.opt ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "")))))
(explore-derivatives (re.++ (str.to_re "")(re.++ (re.union (re.++ (re.range "1" "9")(re.++ ((_ re.loop 0 2) (re.range "0" "9"))(re.++ (re.range "," ",")(re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.range "," ","))) ((_ re.loop 3 3) (re.range "0" "9")))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to_re ""))))
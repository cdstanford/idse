(explore-derivatives (re.union (re.++ (re.+ (re.range "0" "9"))(re.++ (re.range "." ".") (re.* (re.range "0" "9"))))(re.union (re.++ (re.* (re.range "0" "9"))(re.++ (re.range "." ".") (re.+ (re.range "0" "9")))) (re.+ (re.range "0" "9")))))
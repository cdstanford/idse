(explore-derivatives (re.union (re.++ (str.to_re "")(re.++ (re.* (re.range "0" "9"))(re.++ (re.+ (re.range "1" "9")) (str.to_re "")))) (re.++ (str.to_re "")(re.++ (re.+ (re.range "1" "9"))(re.++ (re.* (re.range "0" "9")) (str.to_re ""))))))
(explore-derivatives (re.++ (str.to_re "")(re.++ (re.union (re.++ (re.range "0" "0") (re.range "1" "9")) (re.++ (re.range "1" "1") (re.range "0" "2")))(re.++ (re.* (re.range "-" "/"))(re.++ (re.union (re.++ (re.range "0" "0") (re.range "8" "9")) (re.++ (re.range "1" "1") (re.range "1" "9"))) (str.to_re ""))))))
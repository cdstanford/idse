(explore-derivatives (re.union (re.++ (re.union (re.++ (re.range "(" "(")(re.++ ((_ re.loop 3 4) (re.range "0" "9")) (re.range ")" ")"))) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (re.range "-" "-")))(re.++ ((_ re.loop 4 9) (re.range "0" "9")) (re.union (re.++ (re.range "-" "-") ((_ re.loop 1 5) (re.range "0" "9"))) (str.to_re "")))) ((_ re.loop 4 12) (re.range "0" "9"))))
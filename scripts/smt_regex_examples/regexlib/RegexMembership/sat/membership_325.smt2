(explore-derivatives (re.++ (str.to_re "")(re.++ (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f")))(re.++ (re.range "." ".")(re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f")))(re.++ (re.range "." ".") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))))))) (str.to_re ""))))
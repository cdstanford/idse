(explore-derivatives (re.++ (str.to_re "")(re.++ (re.union (re.++ (re.range "(" "(")(re.++ (re.opt (re.range "0" "0"))(re.++ (re.range "1" "9")(re.++ (re.range "0" "9") (re.range ")" ")"))))) (re.++ (re.opt (re.range "0" "0"))(re.++ (re.range "1" "9") (re.range "0" "9"))))(re.++ (re.opt (re.range " " "."))(re.++ (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")))(re.++ (re.opt (re.range " " "."))(re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re ""))))))))
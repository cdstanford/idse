(explore-derivatives (re.union (re.++ (str.to_re "")(re.++ (re.++ (re.union (re.++ (re.opt (re.range "0" "0")) (re.range "1" "9")) (re.++ (re.range "1" "1") (re.range "0" "2")))(re.++ ((_ re.loop 0 2) (re.++ (re.range ":" ":")(re.++ (re.range "0" "5") (re.range "0" "9")))) (re.++ (re.range " " " ")(re.++ (re.union (re.range "A" "A") (re.range "P" "P")) (re.range "M" "M"))))) (str.to_re ""))) (re.++ (str.to_re "")(re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (re.range "2" "2") (re.range "0" "3")))(re.++ ((_ re.loop 0 2) (re.++ (re.range ":" ":")(re.++ (re.range "0" "5") (re.range "0" "9")))) (str.to_re ""))))))
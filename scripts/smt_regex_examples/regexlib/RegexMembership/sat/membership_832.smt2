(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.++ (str.to_re (seq.++ "9" (seq.++ "7" ""))) (re.range "8" "9")))(re.++ ((_ re.loop 9 9) (re.range "0" "9"))(re.++ (re.union (re.range "0" "9") (re.range "X" "X")) (str.to_re ""))))))
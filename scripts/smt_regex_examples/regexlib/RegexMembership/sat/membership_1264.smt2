(explore-derivatives (re.++ (str.to_re "")(re.++ (re.union (re.++ (re.opt (re.range "0" "0")) (re.range "1" "9")) (re.++ (re.range "1" "1") (re.range "0" "2")))(re.++ (re.range "-" "/")(re.++ (re.union (re.++ (re.opt (re.range "0" "0")) (re.range "1" "9"))(re.union (re.++ (re.union (re.range "1" "2") (re.range "|" "|")) (re.range "0" "9")) (re.++ (re.range "3" "3") (re.union (re.range "0" "1") (re.range "|" "|")))))(re.++ (re.range "-" "/")(re.++ (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re ""))))))))
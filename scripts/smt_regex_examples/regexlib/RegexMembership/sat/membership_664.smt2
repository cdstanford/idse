(explore-derivatives (re.++ (str.to_re "")(re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.opt (re.range "-" "-"))(re.++ ((_ re.loop 2 2) (re.range "0" "9"))(re.++ (re.opt (re.range "-" "-"))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.union (re.range "A" "A")(re.union (re.++ (re.range "B" "B") (re.opt (re.range "1" "7")))(re.union (re.union (re.range "M" "M") (re.range "T" "T"))(re.union (re.++ (re.range "C" "C") (re.range "1" "4")) (re.range "D" "D"))))) (str.to_re "")))))))))
(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.range "1" "1"))(re.++ (re.union (re.range "-" "-") (re.opt (re.range " " " ")))(re.++ (re.opt (re.range "(" "("))(re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.opt (re.union (re.union (re.range " " " ")(re.union (re.range ")" ")") (re.range "-" "-")))(re.union (str.to_re (seq.++ ")" (seq.++ "-" ""))) (str.to_re (seq.++ ")" (seq.++ " " ""))))))(re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.opt (re.union (re.range " " " ") (re.range "-" "-")))(re.++ (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "")))))))))))
(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.++ (re.range "0" "9") (re.opt (re.union (re.range " " " ") (re.range "-" "-")))))(re.++ (re.union (re.++ (re.opt (re.range "(" "("))(re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.range ")" ")")))) ((_ re.loop 3 3) (re.range "0" "9")))(re.++ (re.opt (re.union (re.range " " " ") (re.range "-" "-")))(re.++ (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.opt (re.union (re.range " " " ") (re.range "-" "-"))) ((_ re.loop 4 4) (re.range "0" "9")))) ((_ re.loop 7 7) (re.union (re.range "0" "9")(re.union (re.range "A" "Z") (re.range "a" "z"))))) (str.to_re "")))))))
(explore-derivatives (re.++ (re.opt (re.++ (re.union (re.range "8" "8") (str.to_re (seq.++ "+" (seq.++ "7" "")))) (re.opt (re.range "-" "-"))))(re.++ (re.opt (re.range "(" "("))(re.++ ((_ re.loop 3 5) (re.range "0" "9"))(re.++ (re.opt (re.range ")" ")"))(re.++ (re.opt (re.range "-" "-"))(re.++ (re.range "0" "9")(re.++ (re.opt (re.range "-" "-"))(re.++ (re.range "0" "9")(re.++ (re.opt (re.range "-" "-"))(re.++ (re.range "0" "9")(re.++ (re.opt (re.range "-" "-"))(re.++ (re.range "0" "9")(re.++ (re.opt (re.range "-" "-"))(re.++ (re.range "0" "9") (re.opt (re.++ (re.opt (re.++ (re.opt (re.range "-" "-")) (re.range "0" "9")))(re.++ (re.opt (re.range "-" "-")) (re.range "0" "9")))))))))))))))))))
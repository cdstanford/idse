(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.range "0" "9"))(re.++ (re.* (re.range " " " "))(re.++ (re.opt (re.union (re.range "(" "(") (re.range "-" ".")))(re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.opt (re.union (re.range ")" ")") (re.range "-" ".")))(re.++ (re.* (re.range " " " "))(re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.opt (re.union (re.range " " " ") (re.range "-" ".")))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.* (re.range " " " "))(re.++ (re.opt (re.union (re.range "x" "x") (re.++ (str.to_re (seq.++ "e" (seq.++ "x" (seq.++ "t" "")))) (re.opt (re.range "." ".")))))(re.++ (re.* (re.range " " " "))(re.++ (re.opt ((_ re.loop 1 7) (re.range "0" "9"))) (str.to_re ""))))))))))))))))
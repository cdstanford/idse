(explore-derivatives (re.++ (str.to_re "")(re.++ (re.++ (re.opt (re.range "-" "-")) (re.union (str.to_re (seq.++ "9" (seq.++ "0" ""))) (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "8") (re.range "0" "9"))) (re.opt (re.++ (re.range "." ".") ((_ re.loop 1 6) (re.range "0" "9")))))))(re.++ (re.range "," ",")(re.++ (re.++ (re.opt (re.range "-" "-")) (re.union (str.to_re (seq.++ "1" (seq.++ "8" (seq.++ "0" "")))) (re.++ (re.union (re.range "0" "9")(re.union (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "1")(re.++ (re.range "0" "7") (re.range "0" "9"))))) (re.opt (re.++ (re.range "." ".") ((_ re.loop 1 6) (re.range "0" "9"))))))) (str.to_re ""))))))
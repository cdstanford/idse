(explore-derivatives (re.++ (str.to_re "")(re.++ (re.union (re.++ (re.range "0" "0") (re.range "1" "9"))(re.union (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (re.range "3" "3") (re.range "0" "1"))))(re.++ (re.range "-" "-")(re.++ (re.union (re.++ (re.range "0" "0") (re.range "1" "9"))(re.union (str.to_re (seq.++ "1" (seq.++ "1" "")))(re.union (str.to_re (seq.++ "1" (seq.++ "2" ""))) (str.to_re (seq.++ "1" (seq.++ "0" ""))))))(re.++ (re.range "-" "-")(re.++ (re.++ (str.to_re (seq.++ "1" (seq.++ "9" ""))) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re ""))))))))
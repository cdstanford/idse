(explore-derivatives (re.union (re.++ (str.to_re "")(re.++ (str.to_re (seq.++ "1" (seq.++ "3" (seq.++ "0" (seq.++ "0" "")))))(re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re ""))))(re.union (re.union (re.++ (str.to_re "") (str.to_re (seq.++ "1" (seq.++ "8" (seq.++ "0" (seq.++ "0" ""))))))(re.union (str.to_re (seq.++ "1" (seq.++ "9" (seq.++ "0" (seq.++ "0" ""))))) (re.++ (str.to_re (seq.++ "1" (seq.++ "9" (seq.++ "0" (seq.++ "2" "")))))(re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "")))))(re.union (re.++ (str.to_re "")(re.++ (re.range "0" "0")(re.++ (re.union (re.range "2" "3")(re.union (re.range "7" "8") (re.range "|" "|")))(re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "")))))(re.union (re.++ (str.to_re "")(re.++ (str.to_re (seq.++ "1" (seq.++ "3" "")))(re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "")))) (re.++ (str.to_re "")(re.++ (str.to_re (seq.++ "0" (seq.++ "4" "")))(re.++ ((_ re.loop 2 3) (re.range "0" "9"))(re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re ""))))))))))
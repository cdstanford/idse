(explore-derivatives (re.++ (str.to_re "")(re.++ ((_ re.loop 2 2) (re.range "0" "9"))(re.++ (re.union (str.to_re (seq.++ "0" (seq.++ "1" "")))(re.union (str.to_re (seq.++ "0" (seq.++ "2" "")))(re.union (str.to_re (seq.++ "0" (seq.++ "3" "")))(re.union (str.to_re (seq.++ "0" (seq.++ "4" "")))(re.union (str.to_re (seq.++ "0" (seq.++ "5" "")))(re.union (str.to_re (seq.++ "0" (seq.++ "6" "")))(re.union (str.to_re (seq.++ "0" (seq.++ "7" "")))(re.union (str.to_re (seq.++ "0" (seq.++ "8" "")))(re.union (str.to_re (seq.++ "0" (seq.++ "9" "")))(re.union (str.to_re (seq.++ "1" (seq.++ "0" "")))(re.union (str.to_re (seq.++ "1" (seq.++ "1" "")))(re.union (str.to_re (seq.++ "1" (seq.++ "2" "")))(re.union (str.to_re (seq.++ "5" (seq.++ "1" "")))(re.union (str.to_re (seq.++ "5" (seq.++ "2" "")))(re.union (str.to_re (seq.++ "5" (seq.++ "3" "")))(re.union (str.to_re (seq.++ "5" (seq.++ "4" "")))(re.union (str.to_re (seq.++ "5" (seq.++ "5" "")))(re.union (str.to_re (seq.++ "5" (seq.++ "6" "")))(re.union (str.to_re (seq.++ "5" (seq.++ "7" "")))(re.union (str.to_re (seq.++ "5" (seq.++ "8" "")))(re.union (str.to_re (seq.++ "5" (seq.++ "9" "")))(re.union (str.to_re (seq.++ "6" (seq.++ "0" "")))(re.union (str.to_re (seq.++ "6" (seq.++ "1" ""))) (str.to_re (seq.++ "6" (seq.++ "2" ""))))))))))))))))))))))))))(re.++ (re.union (re.++ (re.range "0" "0") (re.range "1" "9"))(re.union (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (re.range "3" "3") (re.range "0" "1"))))(re.++ (re.range "/" "/")(re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to_re ""))))))))
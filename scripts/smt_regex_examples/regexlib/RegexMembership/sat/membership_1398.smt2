(explore-derivatives (re.++ (str.to_re "")(re.++ (re.union (str.to_re (seq.++ "2" (seq.++ "0" "")))(re.union (str.to_re (seq.++ "2" (seq.++ "1" "")))(re.union (str.to_re (seq.++ "2" (seq.++ "2" "")))(re.union (str.to_re (seq.++ "2" (seq.++ "3" "")))(re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.range "0" "9"))))))(re.++ ((_ re.loop 1 2) (re.++ (re.union (re.range "." ".") (re.range ":" ":"))(re.++ (re.range "0" "5") (re.range "0" "9")))) (str.to_re "")))))
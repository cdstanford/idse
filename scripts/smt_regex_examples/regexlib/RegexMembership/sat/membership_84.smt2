(explore-derivatives (re.union (re.++ (str.to_re "") (re.++ (str.to_re (seq.++ "1" (seq.++ "0" (seq.++ "0" "")))) (re.opt (re.++ (re.union (re.range "," ",") (re.range "." ".")) ((_ re.loop 1 2) (re.range "0" "0"))))))(re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9"))(re.++ (re.union (re.range "," ",") (re.range "." ".")) ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re "")))))
(explore-derivatives (re.union (re.++ (str.to_re "")(re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "")))(re.union (re.++ (str.to_re "")(re.++ (str.to_re (seq.++ "(" (seq.++ "0" "")))(re.++ (re.range "1" "9")(re.++ (re.range ")" ")")(re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re ""))))))(re.union (re.++ (str.to_re "")(re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "")))(re.union (re.++ (str.to_re "")(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "")))))))(re.union (re.++ (str.to_re "")(re.++ (str.to_re (seq.++ "(" (seq.++ "0" "")))(re.++ (re.range "1" "9")(re.++ (str.to_re (seq.++ ")" (seq.++ " " "")))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "")))))))) (re.++ (str.to_re "")(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "")))))))))))
(explore-derivatives (re.union (re.++ (str.to_re (seq.++ "S" (seq.++ "K" "")))(re.++ ((_ re.loop 2 2) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.range " " " ") ((_ re.loop 4 4) (re.range "0" "9"))))))))))))) (re.++ (str.to_re (seq.++ "S" (seq.++ "K" ""))) ((_ re.loop 22 22) (re.range "0" "9")))))
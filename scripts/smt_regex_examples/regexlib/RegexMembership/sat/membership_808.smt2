(explore-derivatives (re.union (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.opt (re.union (re.range " " " ")(re.union (re.range "-" "-") (re.range "/" "/"))))(re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.opt (re.union (re.range " " " ")(re.union (re.range "-" "-") (re.range "/" "/")))) ((_ re.loop 3 3) (re.range "0" "9")))))))(re.union ((_ re.loop 9 9) (re.range "0" "9")) (re.++ (re.++ (re.opt (re.range "+" "+"))(re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.opt (re.union (re.range " " " ")(re.union (re.range "-" "-") (re.range "/" "/"))))(re.++ ((_ re.loop 2 2) (re.range "0" "9"))(re.++ (re.opt (re.union (re.range " " " ")(re.union (re.range "-" "-") (re.range "/" "/"))))(re.++ ((_ re.loop 3 3) (re.range "0" "9"))(re.++ (re.opt (re.union (re.range " " " ")(re.union (re.range "-" "-") (re.range "/" "/")))) ((_ re.loop 3 3) (re.range "0" "9"))))))))) (str.to_re "")))))
(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.union (re.++ (re.opt (re.union (re.range "+" "+") (re.range "-" "-"))) (re.opt (re.range "$" "$"))) (re.++ (re.opt (re.range "$" "$")) (re.opt (re.union (re.range "+" "+") (re.range "-" "-"))))))(re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9"))(re.++ (re.* (re.union (re.++ (re.range "," ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.range "0" "9"))) (re.opt (re.++ (re.range "." ".") (re.union (re.* (re.range "0" "9")) (re.++ (re.+ (re.range "0" "9"))(re.++ (re.union (re.range "E" "E") (re.range "e" "e"))(re.++ (re.union (re.range "+" "+") (re.range "-" "-")) (re.+ (re.range "0" "9")))))))))) (re.++ (re.range "." ".")(re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (re.range "E" "E") (re.range "e" "e"))(re.++ (re.union (re.range "+" "+") (re.range "-" "-")) (re.+ (re.range "0" "9")))))))) (str.to_re "")))))
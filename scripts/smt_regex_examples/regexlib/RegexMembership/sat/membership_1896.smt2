(explore-derivatives (re.++ (re.range "(" "(")(re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.range "0" "0") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "x" "x"))) ((_ re.loop 2 2) (re.range "0" "9")))))(re.++ (re.range ")" ")")(re.++ (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))(re.++ ((_ re.loop 3 4) (re.range "0" "9"))(re.++ (re.* (re.union (re.range " " " ") (re.range "-" "-"))) ((_ re.loop 4 4) (re.range "0" "9")))))))))
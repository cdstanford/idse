(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.++ (re.opt (re.range "(" "("))(re.++ (re.opt (re.range "+" "+"))(re.++ (re.* (re.range "0" "9")) (re.opt (re.range ")" ")"))))))(re.++ (re.* (re.union (re.range " " " ")(re.union (re.range "(" ")")(re.union (re.range "-" "-")(re.union (re.range "0" "9") (re.range "_" "_")))))) (str.to_re "")))))
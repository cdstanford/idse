(explore-derivatives (re.++ (str.to_re "")(re.++ (re.* (re.range "0" "9"))(re.++ (re.opt (re.range "." "."))(re.++ (re.opt (re.union (re.range "5" "5")(re.union (re.range "0" "0") (str.to_re "")))) (str.to_re ""))))))
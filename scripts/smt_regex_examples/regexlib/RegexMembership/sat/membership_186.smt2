(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.union (re.range "+" "+") (re.range "-" "-")))(re.++ (re.+ (re.range "0" "9")) (str.to_re "")))))

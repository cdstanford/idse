(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.++ (re.opt (re.range "+" "+")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.range "-" "-"))))(re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "")))))
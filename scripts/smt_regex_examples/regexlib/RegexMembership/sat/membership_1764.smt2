(explore-derivatives (re.++ (str.to_re "")(re.++ (re.range "A" "Z")(re.++ (re.opt (re.union (re.range " " " ") (re.range "-" "-")))(re.++ (re.range "1" "9")(re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "")))))))
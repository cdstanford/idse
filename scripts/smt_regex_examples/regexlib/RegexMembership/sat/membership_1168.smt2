(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.range "(" "("))(re.++ (re.range "0" "0")(re.++ (re.union (re.range "2" "3") (re.range "7" "8"))(re.++ (re.opt (re.range ")" ")"))(re.++ (re.opt (re.union (re.range " " " ") (re.range "-" "-")))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.opt (re.union (re.range " " " ") (re.range "-" "-")))(re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "")))))))))))
(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.range "-" "-")) (re.union (re.++ (re.opt (re.range "1" "8"))(re.++ (re.range "0" "9")(re.++ (re.range "." ".")(re.++ ((_ re.loop 1 6) (re.range "0" "9")) (str.to_re ""))))) (re.++ (str.to_re (seq.++ "9" (seq.++ "0" (seq.++ "." ""))))(re.++ ((_ re.loop 1 6) (re.range "0" "0")) (str.to_re "")))))))
(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.union (re.* (re.++ (str.to_re (seq.++ "." (seq.++ "." ""))) (re.range "/" "/"))) (re.range "/" "/")))(re.++ (re.* (re.++ (re.* (re.union (re.range "0" "9")(re.union (re.range "A" "Z") (re.range "a" "z")))) (re.range "/" "/")))(re.++ (re.+ (re.* (re.union (re.range "0" "9")(re.union (re.range "A" "Z") (re.range "a" "z")))))(re.++ (re.+ (re.union (re.range "." ".")(re.union (re.range "f" "g")(re.union (re.range "i" "j") (re.range "p" "p"))))) (str.to_re "")))))))
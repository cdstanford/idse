(explore-derivatives (re.++ (str.to_re "")(re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z")))(re.++ (re.opt (re.++ (re.opt (re.++ (re.union (re.range "-" "-") (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))))) (re.opt (re.++ (re.range "," ",")(re.++ (re.opt (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))) (re.union (re.++ (re.union (re.union (re.range "J" "J") (re.range "j" "j")) (re.union (re.range "S" "S") (re.range "s" "s")))(re.++ (re.union (re.range "R" "R") (re.range "r" "r")) (re.opt (re.range "." "."))))(re.union (str.to_re (seq.++ "I" (seq.++ "I" "")))(re.union (str.to_re (seq.++ "I" (seq.++ "I" (seq.++ "I" "")))) (str.to_re (seq.++ "I" (seq.++ "V" ""))))))))))) (str.to_re "")))))
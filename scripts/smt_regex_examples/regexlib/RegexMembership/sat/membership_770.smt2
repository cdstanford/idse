(explore-derivatives (re.union (re.++ (re.range "[" "[")(re.++ (re.+ (re.union (re.union (re.range "\x00" "\x5c") (re.range "^" "\xff")) (str.to_re (seq.++ "]" (seq.++ "]" ""))))) (re.range "]" "]")))(re.union (re.++ (re.range "\x22" "\x22")(re.++ (re.+ (re.union (re.union (re.range "\x00" "!") (re.range "#" "\xff")) (str.to_re (seq.++ "\x22" (seq.++ "\x22" ""))))) (re.range "\x22" "\x22"))) (re.++ (re.union (re.range "A" "Z")(re.union (re.range "_" "_") (re.range "a" "z"))) (re.* (re.union (re.range "0" "9")(re.union (re.range "A" "Z")(re.union (re.range "_" "_") (re.range "a" "z")))))))))
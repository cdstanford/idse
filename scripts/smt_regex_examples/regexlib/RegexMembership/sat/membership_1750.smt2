(explore-derivatives (re.++ (re.++ (str.to_re (seq.++ "{" (seq.++ "\x5c" (seq.++ "f" "")))) (re.* (re.range "0" "9")))(re.++ (re.range "\x5c" "\x5c") (re.++ (re.+ (re.union (re.range "\x00" ":") (re.range "<" "\xff"))) (re.range ";" ";")))))
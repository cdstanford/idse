(explore-derivatives (re.++ (re.range "\x22" "\x22")(re.++ (re.* (re.range "0" "9"))(re.++ (str.to_re (seq.++ "\x22" (seq.++ "," (seq.++ "\x22" ""))))(re.++ (re.* (re.range "0" "9")) (str.to_re (seq.++ "\x22" (seq.++ ")" ""))))))))
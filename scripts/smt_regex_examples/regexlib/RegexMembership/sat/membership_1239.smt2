(explore-derivatives (re.++ (str.to_re "")(re.++ (re.* (re.union (re.range "\x0a" "\x0a")(re.union (re.range " " " ")(re.union (re.range "&" "'")(re.union (re.range ";" ";")(re.union (re.range "l" "l")(re.union (re.range "o" "o")(re.union (re.range "q" "q") (re.range "t" "u"))))))))) (re.++ (re.+ (re.union (re.range "-" ".")(re.union (re.range "0" "9")(re.union (re.range "A" "Z")(re.union (re.range "_" "_") (re.range "a" "z"))))))(re.++ (re.range "@" "@") (re.+ (re.union (re.range "-" ".")(re.union (re.range "0" "9")(re.union (re.range "A" "Z")(re.union (re.range "_" "_") (re.range "a" "z")))))))))))
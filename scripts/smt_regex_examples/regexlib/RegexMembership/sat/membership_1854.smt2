(explore-derivatives (re.++ (str.to_re (seq.++ "&" (seq.++ "l" (seq.++ "t" (seq.++ ";" "")))))(re.++ (re.* (re.union (re.range "\x00" "%")(re.union (re.range "'" ":")(re.union (re.range "<" "f")(re.union (re.range "h" "s") (re.range "u" "\xff"))))))(re.++ (re.opt (re.range "\x0a" "\x0a"))(re.++ (re.* (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff")))(re.++ (re.range "=" "=")(re.++ (re.opt (re.union (str.to_re (seq.++ "&" (seq.++ "q" (seq.++ "u" (seq.++ "o" (seq.++ "t" (seq.++ ";" ""))))))) (re.range "'" "'")))(re.++ (re.++ (re.* (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff"))) (str.to_re (seq.++ "." (seq.++ "j" (seq.++ "p" (seq.++ "g" ""))))))(re.++ (re.opt (re.union (str.to_re (seq.++ "&" (seq.++ "q" (seq.++ "u" (seq.++ "o" (seq.++ "t" (seq.++ ";" ""))))))) (re.range "'" "'")))(re.++ (re.* (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff")))(re.++ (re.opt (re.range "\x0a" "\x0a"))(re.++ (re.* (re.union (re.range "\x00" "%")(re.union (re.range "'" ":")(re.union (re.range "<" "k")(re.union (re.range "m" "s") (re.range "u" "\xff")))))) (str.to_re (seq.++ "&" (seq.++ "g" (seq.++ "t" (seq.++ ";" "")))))))))))))))))
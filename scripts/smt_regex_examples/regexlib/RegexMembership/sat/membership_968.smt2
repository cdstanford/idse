(explore-derivatives (re.++ (re.union (str.to_re (seq.++ "w" (seq.++ "w" (seq.++ "w" "")))) (str.to_re (seq.++ "h" (seq.++ "t" (seq.++ "t" (seq.++ "p" "")))))) (re.++ (re.+ (re.union (re.range "\x00" "/")(re.union (re.range ":" "@")(re.union (re.range "[" "^")(re.union (re.range "`" "`")(re.union (re.range "{" "\xa9")(re.union (re.range "\xab" "\xb4")(re.union (re.range "\xb6" "\xb9")(re.union (re.range "\xbb" "\xbf")(re.union (re.range "\xd7" "\xd7") (re.range "\xf7" "\xf7")))))))))))(re.++ (re.+ (re.union (re.range "\x00" "\x08")(re.union (re.range "\x0e" "\x1f")(re.union (re.range "!" "\x84")(re.union (re.range "\x86" "\x9f") (re.range "\xa1" "\xff")))))) (re.+ (re.union (re.range "\x00" "\x09")(re.union (re.range "\x0b" "\x0c")(re.union (re.range "\x0e" "\x1f")(re.union (re.range "!" "#")(re.union (re.range "%" "(")(re.union (re.range "*" "+")(re.union (re.range "-" "-")(re.union (re.range "/" "9")(re.union (re.range "<" ">")(re.union (re.range "@" "\x5c")(re.union (re.range "^" "|") (re.range "~" "\xff")))))))))))))))))
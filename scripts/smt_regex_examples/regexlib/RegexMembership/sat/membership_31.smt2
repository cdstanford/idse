(explore-derivatives (re.++ (str.to_re (seq.++ "m" (seq.++ "e" (seq.++ "g" (seq.++ "a" (seq.++ "u" (seq.++ "p" (seq.++ "l" (seq.++ "o" (seq.++ "a" (seq.++ "d" (seq.++ "." (seq.++ "c" (seq.++ "o" (seq.++ "m" "")))))))))))))))(re.++ (re.* (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff")))(re.++ (re.union (re.range "&" "&") (re.range "?" "?"))(re.++ (re.union (re.++ (re.opt (str.to_re (seq.++ "f" (seq.++ "o" (seq.++ "l" (seq.++ "d" (seq.++ "e" (seq.++ "r" (seq.++ "i" ""))))))))) (re.range "d" "d")) (re.range "f" "f"))(re.++ (re.range "=" "=") ((_ re.loop 8 8) (re.union (re.range "-" "-")(re.union (re.range "0" "9")(re.union (re.range "A" "Z") (re.range "a" "z")))))))))))
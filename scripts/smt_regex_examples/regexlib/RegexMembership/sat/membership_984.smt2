(explore-derivatives (re.++ (str.to_re (seq.++ "<" (seq.++ "?" (seq.++ "x" (seq.++ "m" (seq.++ "l" ""))))))(re.++ (re.* (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff"))) (str.to_re (seq.++ "<" (seq.++ "/" (seq.++ "n" (seq.++ "o" (seq.++ "t" (seq.++ "e" (seq.++ ">" "")))))))))))
(explore-derivatives (re.union (re.++ (str.to_re "")(re.++ (re.range "0" "0")(re.++ (re.* (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff"))) (re.* (re.range "1" "9")))))(re.union (re.++ (str.to_re "")(re.++ (str.to_re (seq.++ "8" (seq.++ "6" ""))) (re.+ (re.range "0" "0"))))(re.union (re.++ (str.to_re "") (str.to_re (seq.++ "8" (seq.++ "6" (seq.++ "1" (seq.++ "3" ""))))))(re.union (re.union (re.range "\x00" "/") (re.range ":" "\xff")) (re.range "0" "9"))))))
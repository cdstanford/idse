(explore-derivatives (re.++ (re.union (re.range "N" "N") (re.range "S" "S"))(re.++ (re.range " " " ")(re.++ (re.+ (re.range "0" "9"))(re.++ ((_ re.loop 2 2) (re.++ (re.range ":" ":")(re.++ (re.range "0" "5") (re.range "0" "9"))))(re.++ (re.opt (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff")))(re.++ (re.* (re.range "0" "9"))(re.++ (re.range "," ",")(re.++ (re.union (re.range "E" "E") (re.range "W" "W"))(re.++ (re.range " " " ")(re.++ (re.+ (re.range "0" "9"))(re.++ ((_ re.loop 2 2) (re.++ (re.range ":" ":")(re.++ (re.range "0" "5") (re.range "0" "9"))))(re.++ (re.opt (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff"))) (re.* (re.range "0" "9")))))))))))))))
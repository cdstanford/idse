(explore-derivatives (re.++ (re.range "a" "c")(re.++ (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff"))(re.++ (re.* (re.++ (re.range "a" "a")(re.++ (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff")) (re.range "b" "b"))))(re.++ (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff"))(re.++ (re.+ (re.range "b" "b"))(re.++ (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff")) (re.range "c" "c"))))))))
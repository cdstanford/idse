(explore-derivatives (re.++ (str.to_re (seq.++ "h" (seq.++ "t" (seq.++ "t" (seq.++ "p" (seq.++ ":" (seq.++ "/" (seq.++ "/" ""))))))))(re.++ (re.opt (str.to_re (seq.++ "w" (seq.++ "w" (seq.++ "w" (seq.++ "." ""))))))(re.++ (re.+ (re.union (re.range "\x00" "-") (re.range "/" "\xff"))) (str.to_re (seq.++ "." (seq.++ "c" (seq.++ "o" (seq.++ "m" (seq.++ " " ""))))))))))
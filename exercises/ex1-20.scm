 #lang sicp 

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40)))

 ;; so here this x = (remainder 206 40) is going to be called more times 
 ;; in normal order because of the expanding and spreading in normal order

 ;; and in applicative order the remainder is going to be solved and then using the value  

 ;; IN MY PROFESSIONAL OPINION, normal is going to have more remainder calls 
 ;; because it will be referenced more times in each iteration

 ;; normal calls >>> applicative calls
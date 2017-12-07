(define (roll-till-you-win)
  (let
    ((die-roll (1+ (random 6)))
    (bet (1+ (random 6))))
      (display "Bet: ")
      (display bet)
      (display " Result: ")
      (display die-roll)
      (newline)
      (cond ((= die-roll bet) (display "You won!"))
      (else (roll-till-you-win)
      ))
  )
)

(define (convert num base)
  (cond ((= num 0)(display ""))
  (else
    (begin
     (convert (floor (/ num base)) base)
     (display (modulo num base))
    )
  ))
)

(define (isPrime num i)
  (cond ((= 2 num) 1)
        ((= (modulo num i) 0) 0)
        ((= i 2) 1)
        (else (isPrime num (- i 1)))))

(define (list-primes count)
  (cond ((= count 1)(display "2"))
        ((= count 0)(display ""))
        (else (
               if(= 1 (isPrime count (- count 1)))
               (begin (list-primes (- count 1))(display count)(newline))
               (list-primes (- count 1))
               ))))

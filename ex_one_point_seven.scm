(define (sqrt-iter guess x)
  (if (good-enough-2? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (good-enough-2? guess x)
  (< (abs(- guess (improve guess x))) (/ guess 1000)))

(define (square x)
 (* x x))

(define (hbsqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter-2 guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter-2 (improve guess x)
                 x)))

(define (hbsqrt2 x)
  (sqrt-iter-2 1.0 x))
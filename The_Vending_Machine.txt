coins = ("R5", "R2", "R1", "c50", "c20", "c10")

deftemplate items
		(slot cola)
		(slot orange)
		(slot sweets)
		(slot chocolate)
)

(deftemplate item_price
        (cola    8.50)
        (orange 10.00)
        (sweets 12.50)
        (chocolate 15.00)
		

(printout t ("Welcome to the vending machine change maker program" crlf)
(printout t  ("Change maker initialized."crlf)
(printout t ("Stock has:" crlf)
(printout t ("  50 cents" crlf)
(printout t  ("  20 cents" crlf)
(printout t  ("  10 cents" crlf)
(printout t ("  1 rands" crlf)
(printout t  ("  2 rands" crlf)
(printout t  ("  5 rands" crlf)

c = 10
c = 20
c = 50
R = 1
R = 2
R = 5



(printout t ("Enter the purchase price (xx.xx) or 'E' to exit:" crlf)



(defrule calc_change
	(coin ?coin)
	(item_price (coin (* ?coin 100 % 5 not 0))
        (printout t ("Illegal price: Must be a non-negative multiple of 5 cents" crlf)

     =>
	(printout t ("Menu for deposits" crlf)
	(printout t (" 'c' - deposit_a_cent" crlf)
	(printout t ("'r' - deposit_a_rand" crlf)
	(printout t ("'d' - cancel the purchase" crlf)
	(printout t ("Menu for deposits" crlf)
	(printout t (" " crlf)
	
     ?item_price = (item_price(coin(-1)
	=>
	 100 * coin(?coin(1))    
)

(deffunction ask-amount (?item_price)
   (printout t ?item_price " (yes or no) ")
   (bind ?answer (read))
   (while (and (money ?answer yes) (money ?answer no))
      (printout t ?item_price " (yes or no) ")
      (bind ?answer (read)))
   (return ?answer))
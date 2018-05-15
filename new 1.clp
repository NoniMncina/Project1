(deftemplate total_paid (slot balance))

(deftemplate cola (slot price1))

(deftemplate orange (slot price2))

(deftemplate sweets (slot price3))

(deftemplate chocolate (slot price4))


(defrule add_coins (?feedback)

 (if (eq ?feedback R5) then

  (return 5))

  if (eq ?feedback R2) then

  (return 2))

  (if (eq ?feedback R1) then

    (return 1))

  (if (eq ?feedback c50) then

    (return 50))

  if (eq ?feedbackc20) then

   (return 20))

 (if (eq ?feedbackc10) then

   (return 10)))

   

(defrule selected-item-price (?answer)



  (if (eq ?answer 1) then

   (bind ?total-price 8.50))

  (if (eq ?answer 2) then

  (bind ?total-price 10.00))

  (if (eq ?answer 3) then 

   (bind ?total-price 12.50))

  if (eq ?answer 4) then

   (bind ?total-price 15.00))

 (printout t "Your need to pay: R" ?total-price "0"crlf)





(deffacts item-prices



 (cola (price1 8.50))



 (orange (price2 10.00))


  (sweets (price3 12.50))



  (chocolate (price4 15.00)))







(defrule questions


 =>        

 (printout t "Enter a number (1-4): " crlf



   "1. Cola: R8.50" crlf



    "2. Orange: R10.00" crlf


    "3. Sweets: R12.50" crlf



    "4. Chocolate: R15.00" crlf)



   (selected-item-price(read))



    (printout t crlf))
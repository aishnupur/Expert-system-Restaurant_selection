(deftemplate Restaurant
   (slot type)
   (slot ambience)
   (slot cuisine)
   (slot location)
   (slot parking)
   (slot price)) 
(deftemplate Best_restaurant
   (slot Best_restaurant))

(defrule India_Flavours
   (Restaurant (type buffet) (ambience lounge) (cuisine Indian) (location Farmington_hills) (parking yes) (price medium))
   =>
   (assert (Best_restaurant (Best_restaurant India_flavours)))
   (printout t "India Flavours" crlf))
(defrule Las_Palapas
   (Restaurant (type fast_food) (ambience live_mariachi_music) (cuisine Mexican) (location Livonia) (parking yes) (price medium))
   =>
   (assert (Best_restaurant (Best_restaurant Las_Palapas)))
   (printout t "Las Palapas" crlf))
(defrule Urban_Tawa_Indian_Kitchen
   (Restaurant (type casual_dining) (ambience normal) (cuisine Indian) (location Canton) (parking yes) (price medium))
   =>
   (assert (Best_restaurant (Best_restaurant India_flavours)))
   (printout t "Urban Tawa Indian Kitchen" crlf))
(defrule Paesano
   (Restaurant (type family) (ambience romantic_patio ) (cuisine Italian) (location Ann_Arbor) (parking no) (price medium))
   =>
   (assert (Best_restaurant (Best_restaurant Paesano)))
   (printout t "Paesano" crlf))
(defrule Dominicks
   (Restaurant (type Bar) (ambience Fountain_patio ) (cuisine Italian) (location Ann_Arbor) (parking no) (price medium))
   =>
   (assert (Best_restaurant (Best_restaurant Dominicks)))
   (printout t "Dominicks" crlf))
(defrule China_Cafe
   (Restaurant (type family) (ambience Contemporary_dining) (cuisine Chinese) (location Novi) (parking no) (price medium))
   =>
   (assert (Best_restaurant (Best_restaurant China_Cafe)))
   (printout t "China Cafe" crlf))
(defrule La_Bistecca_Italian_Grille
   (Restaurant (type fine_dining) (ambience quaint) (cuisine Italian) (location Plymouth) (parking yes) (price high))
   =>
   (assert (Best_restaurant (Best_restaurant La_Bistecca_Italian_Grille)))
   (printout t "La Bistecca Italian Grille" crlf))
(defrule Siam_Spicy4
   (Restaurant (type cafe) (ambience normal) (cuisine Thai) (location Livonia) (parking yes) (price medium))
   =>
   (assert (Best_restaurant (Best_restaurant Siam_Spicy4)))
   (printout t "Siam Spicy4" crlf))
(defrule Gaucho_Steakhouse
   (Restaurant (type fine_dining) (ambience normal) (cuisine Brazilian) (location Northville) (parking yes) (price high))
   =>
   (assert (Best_restaurant (Best_restaurant Gaucho_Steakhouse)))
   (printout t "Gaucho Steakhouse" crlf))

(defrule Bucharest_Grill
   (Restaurant (type family) (ambience normal) (cuisine Mediterranean) (location Detroit) (parking no) (price low))
   =>
   (assert (Best_restaurant (Best_restaurant Bucharest_Grill)))
   (printout t "Bucharest Grill" crlf))

(deffacts features
   (Restaurant (type fine_dining) (ambience normal) (cuisine Brazilian) (location Northville) (parking yes) (price high)))

primitive North 
  fun string(): String => "N"
  fun opposite(): Direction => South

primitive South 
  fun string(): String => "S"
  fun opposite(): Direction => North

primitive East  
  fun string(): String => "E"
  fun opposite(): Direction => West

primitive West  
  fun string(): String => "W"
  fun opposite(): Direction => East

type Direction is (North | South | East | West)
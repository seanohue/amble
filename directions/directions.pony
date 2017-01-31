primitive North 
  fun string(): String => "N"
  fun opposite(): Direction => South
  fun eq(other: Direction): Bool => other.string() == "N"

primitive South 
  fun string(): String => "S"
  fun opposite(): Direction => North
  fun eq(other: Direction): Bool => other.string() == "S"

primitive East  
  fun string(): String => "E"
  fun opposite(): Direction => West
  fun eq(other: Direction): Bool => other.string() == "E"

primitive West  
  fun string(): String => "W"
  fun opposite(): Direction => East
  fun eq(other: Direction): Bool => other.string() == "W"


type Direction is (North | South | East | West)
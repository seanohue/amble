primitive DefaultMapSettings
  fun width():  I32 => 50
  fun height(): I32 => 30

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

actor Main
  new create(env: Env) =>
    env.out.print(North.opposite().string()) // should be south



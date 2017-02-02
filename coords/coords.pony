use "../directions"

class Coordinates
  let x: I64
  let y: I64
  new create(x': I64, y': I64) =>
    x = x'
    y = y'
  
  fun translate(xChange: I64, yChange: I64): Coordinates =>
    Coordinates.create(x + xChange, y + yChange)
  
  fun translateByDirection(dir: Direction, amount: I64 = 1): Coordinates =>
    match dir
    | North => translate( 0,  amount)
    | South => translate( 0, -amount)
    | East  => translate( amount,  0)
    | West  => translate(-amount,  0)
    else 
      Coordinates.create(x, y)
    end

  fun string(): String => x.string().add(", ").add(y.string())
  fun eq(other: Coordinates): Bool => x.eq(other.x) and y.eq(other.y)
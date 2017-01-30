use "directions"

class Coordinates
  let x: I64
  let y: I64
  new create(x': I64, y': I64) =>
    x = x'
    y = y'
  
  fun translate(xChange: I64, yChange: I64): Coordinates =>
    x + xChange
    y + yChange
    return this
  
  fun translateByDirection(d: Direction, amount: I64): Coordinates =>
    if (d == North) then return this.translate( 0,  amount) end
    if (d == South) then return this.translate( 0, -amount) end
    if (d == East)  then return this.translate( amount,  0) end
    if (d == West)  then return this.translate(-amount,  0) end
    return this

  fun result(): String => x.string().add(", ").add(y.string())
  fun eq(other: Coordinates): Bool => x.eq(other.x) and y.eq(other.y)
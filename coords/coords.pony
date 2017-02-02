use "../directions"

class Coordinates
  let x: I64
  let y: I64
  new create(x': I64, y': I64) =>
    x = x'
    y = y'
  
  fun translate(xChange: I64, yChange: I64): Coordinates =>
    Coordinates.create(x + xChange, y + yChange)
  
  fun translateByDirection(d: Direction, amount: I64): Coordinates =>
    if (d.eq(North)) then return this.translate( 0,  amount) end
    if (d.eq(South)) then return this.translate( 0, -amount) end
    if (d.eq(East) ) then return this.translate( amount,  0) end
    if (d.eq(West) ) then return this.translate(-amount,  0) end
    Coordinates.create(x, y)

  fun string(): String => x.string().add(", ").add(y.string())
  fun eq(other: Coordinates): Bool => x.eq(other.x) and y.eq(other.y)
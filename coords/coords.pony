use "directions"

class Coords
  let x: I64
  let y: I64
  new create(x': I64, y': I64) =>
    x = x'
    y = y'
  
  fun translate(xChange: I64, yChange: I64): Coords =>
    x + xChange
    y + yChange
    return this
  
  fun translate(d: Direction): Coords =>
    if (d == North) then return this.translate( 0,  1) end
    if (d == South) then return this.translate( 0, -1) end
    if (d == East)  then return this.translate( 1,  0) end
    if (d == West)  then return this.translate(-1,  0) end
    return this

  fun result(): String => x.string().add(", ").add(y.string())
  fun eq(other: Point): Bool => x.eq(other.x) and y.eq(other.y)
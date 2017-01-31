use "../map-tile"
use "../coords"
use "collections"

class Map2D
  let tiles: Array[MapTile]

  new create(len: I64) => 
    tiles = Array[MapTile].create(len.usize())

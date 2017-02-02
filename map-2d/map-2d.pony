use "../map-tile"
use "../coords"
use "collections"

class Map2D
  let tiles: Array[MapTile]

  new ref create(len: I64) => 
    tiles = Array[MapTile].create(len.usize())
    
  fun ref update(i: I64, thing: MapTile) =>
    try
      tiles.update(i.usize(), thing)
    end

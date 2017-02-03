use "../map-tile"
use "../coords"
use "collections"

class Map2D
  let tiles: Array[MapTile]
  let _env: Env

  new ref create(env: Env) => 
    tiles = Array[MapTile].create()
    _env = env
    
  fun ref push(tile: MapTile) =>
    tiles.push(tile)

  fun ref values(): ArrayValues[MapTile, Array[MapTile]] =>
    tiles.values()

  fun ref getByCoords(other: Coordinates): MapTile =>
    for tile in tiles.values() do
      if (tile.getCoordinates().eq(other)) then
        return tile
      end
    end
    return MapTile.create(other, "error")

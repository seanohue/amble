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

  fun box getByCoords(other: Coordinates): this->MapTile ref^ =>
    for tile in tiles.values() do
      if (tile.getCoordinates().eq(other)) then
        return tile
      end
    end
    let errorTile: MapTile = MapTile.create(other, "error")
    tiles.push(errorTile)
    errorTile

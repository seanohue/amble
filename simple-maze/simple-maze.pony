use "../coords"
use "../map-tile"
use "../directions"
use "../map-settings"
use "../map-2d"

class SimpleMazeGenerator
  let _settings: DefaultMapSettings = DefaultMapSettings
  let _height: I64
  let _width: I64
  let _map: Map2D
  let rendering: String

  new create() =>
    _height   = _settings.height()
    _width    = _settings.width()
    _map      = Map2D.create(_height * _width)
    rendering = ""

  fun ref generate() =>
    prefill()

    // Creates map which is stored in 2D map
    // - create maptiles by iterating over x and y to fill map
    // - use algorithm to "dig" pathways through map by changing glyphs of maptiles
    // -- to do that, add helper methods for transversal to the 2D map class
  
  // Helper functions for generate...
  fun ref prefill() => 
    var x: I64 = 0
    var y: I64 = 0
    var i: I64 = 0

    while (y < _height) do

      while (x < _width) do
        let coords = Coordinates.create(x, y)
        let tile   = MapTile.create(coords, "#")
        _map.update(i, tile)
        i = i + 1
        x = x + 1
      end

      y = y + 1
      x = 0
    end

  
  fun carve(firstX: I64, firstY: I64, direction: Direction) => None
    // Should imitate carve function of other maze generator
   


  fun render(): String => 
    for tile in _map.tiles.values() do
      rendering.add(tile.string())
      if ((tile.getCoordinates().x + 1) == _width) then
        rendering.add("/n")
      end
    end
    rendering.add("/n").add("Map Finished")

      
  

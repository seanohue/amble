use "../coords"
use "../map-tile"
use "../directions"
use "../map-settings"
use "../map-2d"

actor SimpleMazeGenerator
  let _settings: DefaultMapSettings = DefaultMapSettings
  let _height: I64
  let _width: I64
  let _map: Map2D
  let _env: Env

  new create(env: Env) =>
    _height   = _settings.height()
    _width    = _settings.width()
    _map      = Map2D.create(env)
    _env      = env

  be generate() =>
    _env.out.print("Generating...")
    prefill()
    render()

    // Creates map which is stored in 2D map
    // - create maptiles by iterating over x and y to fill map
    // - use algorithm to "dig" pathways through map by changing glyphs of maptiles
    // -- to do that, add helper methods for transversal to the 2D map class
  
  // Helper functions for generate...
  be prefill() => 
    var x: I64 = 0
    var y: I64 = 0
    var i: I64 = 0

    _env.out.print("Prefilling...")
    while (y < _height) do
      
      while (x < _width) do
        let coords = Coordinates.create(x, y)
        _env.out.print(coords.string())
        _env.out.print(i.string())
        
        let tile = MapTile.create(coords, "#")
        _map.push(tile)
        i = i + 1
        x = x + 1
      end

      y = y + 1
      x = 0
    end

  
  fun carve(firstX: I64, firstY: I64, direction: Direction) => None
    // Should imitate carve function of other maze generator
   


  be render() => 
    _env.out.write("-")
    for tile in _map.values() do
      _env.out.write(tile.string())
      if (tile.getCoordinates().x  == (_width - 1)) then
        _env.out.print("-")
        _env.out.write("-")
      end
    end
    _env.out.print("MAP DONE")

      
  

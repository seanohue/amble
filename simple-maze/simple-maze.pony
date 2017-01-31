use "../coords"
use "../directions"
use "../map-settings"
use "../map-2d"

actor SimpleMazeGenerator
  let _settings: DefaultMapSettings = DefaultMapSettings
  let _height: I64
  let _width: I64
  let _map: Map2D

  new create() =>
    _height = _settings.height()
    _width  = _settings.width()
    _map = Map2D.create(_height * _width)

  fun generate(): None => None
    // Creates map which is stored in 2D map

  fun render(): None => None
    // Stringifies map, likely a proxy for Map2D.render
  

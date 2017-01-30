use "coords"
use "directions"
use "map-settings"
use "map-2d"

actor SimpleMazeGenerator
  let _settings: MapSettings
  let _height: I64
  let _width: I64
  let _map: Map2D

  new create(settings': MapSettings) =>
    _settings = settings'
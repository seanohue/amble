use "coords"
use "directions"
use "map-settings"

actor SimpleMazeGenerator
  let settings: MapSettings
  let height: I64
  let width: I64

  new create(settings': MapSettings) =>
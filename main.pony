use "directions"
use "coords"
use "simple-maze"
use "map-settings"
use "map-tile"

actor Main
  new create(env: Env) =>
    env.out.print(MapTile.create(Coordinates.create(0,0).translateByDirection(North.opposite(), 1), "#").string()) // should be #


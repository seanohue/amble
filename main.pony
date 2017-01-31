use "directions"
use "coords"
use "simple-maze"
use "map-settings"

actor Main
  new create(env: Env) =>
    env.out.print(Coordinates.create(0,0).translateByDirection(North.opposite(), 1).result()) // should be (0, -1)


use "directions"
use "coords"
use "simple-maze"
use "map-settings"

actor Main
  new create(env: Env) =>
    env.out.print(Coordinates.create(0,0).translate(North.opposite()).results()) // should be (0, -1)


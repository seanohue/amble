use "directions"
use "coords"
use "simple-maze"
use "map-settings"
use "map-tile"

actor Main
  new create(env: Env) =>
    let gen: SimpleMazeGenerator = SimpleMazeGenerator.create(env)
    gen.generate()


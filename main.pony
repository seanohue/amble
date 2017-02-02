use "directions"
use "coords"
use "simple-maze"
use "map-settings"
use "map-tile"

actor Main
  new create(env: Env) =>
    let gen: SimpleMazeGenerator = SimpleMazeGenerator.create()
    gen.generate()
    env.out.print("Generating...")
    env.out.print(gen.render())    
     // should be #


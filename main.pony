use "directions"

primitive DefaultMapSettings
  fun width():  I32 => 50
  fun height(): I32 => 30

actor Main
  new create(env: Env) =>
    env.out.print(North.opposite().string()) // should be south



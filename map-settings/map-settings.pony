primitive DefaultMapSettings
  fun width():  I32 => 50
  fun height(): I32 => 30

trait HasWidth
  fun width(): I32 => 50

trait HasHeight
  fun height(): I32 => 30

type MapSettings is (HasWidth & HasHeight)
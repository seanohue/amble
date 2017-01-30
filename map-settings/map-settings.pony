primitive DefaultMapSettings
  fun width():  I64 => 50
  fun height(): I64 => 30

trait HasWidth
  fun width():  I64 => 50
trait HasHeight
  fun height(): I64 => 30

type MapSettings is (HasWidth & HasHeight)
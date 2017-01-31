use "../coords"

class MapTile
  let _coords: Coordinates
  var _glyph:  String // For now...
  
  new create(coords': Coordinates, glyph': String) =>
    _coords = coords'
    _glyph  = glyph'

  fun getCoordinates(): this->Coordinates => _coords

  fun ref setGlyph(newGlyph: String) =>
    _glyph = newGlyph
  
  fun string(): String => _glyph

  fun eq(other: MapTile): Bool => _coords.eq(other.getCoordinates())
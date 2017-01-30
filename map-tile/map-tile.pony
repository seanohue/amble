use "coords"

class MapTile
  let _coords: Coordinates
  let _glyph:  String // For now...
  
  new create(coords': Coordinates, glyph': String) =>
    _coords = coords'
    _glyph  = glyph'

  fun setCoordinates(newCoords: Coordinates) =>
    _coords = newCoords

  fun getCoordinates(): Coordinates => _coords

  fun setGlyph(newGlyph: String) =>
    _glyph = newGlyph
  
  fun string(): String => _glyph

  fun eq(other: MapTile): Bool => _coords.eq(other.getCoordinates())
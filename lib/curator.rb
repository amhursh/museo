require './lib/museum'
require './lib/artist'
require './lib/photograph'

class Curator

  attr_reader :artists,
              :museums,
              :photographs

  def initialize(artists = [], museums = [], photographs = [])
    @artists = artists
    @museums = museums
    @photographs = photographs
  end

  def add_museum(arguments)
    museums << Museum.new(arguments)
  end

  def add_artist(arguments)
    artists << Artist.new(arguments)
  end

  def add_photograph(arguments)
    photographs << Photograph.new(arguments)
  end

end

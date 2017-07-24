class Photograph

  attr_reader :id,
              :artist_id,
              :museum_id,
              :name,
              :year

  def initialize(info = {id: nil, name: nil, artist_id: nil, museum_id: nil, year: nil})
    @info = info
    @id = @info[:id]
    @name = @info[:name]
    @artist_id = @info[:artist_id]
    @museum_id = @info[:museum_id]
    @year = @info[:year]
  end



end

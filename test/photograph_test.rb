require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test

  def test_photograph_exists
    photo = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_instance_of Photograph, photo
  end

  def test_photograph_has_id
    photo = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_equal 1, photo.id
  end

  def test_photograph_has_artist_id
    photo = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_equal 4, photo.artist_id
  end

  def test_photograph_has_museum_id
    photo = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_equal 2, photo.museum_id
  end

  def test_photograph_has_name
    photo = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photo.name
  end

  def test_photograph_has_year
    photo = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_equal 1954, photo.year
  end

end

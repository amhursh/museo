require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test

  def test_curator_exists
    sam = Curator.new

    assert_instance_of Curator, sam
  end

  def test_curator_artists_is_empty_on_creation
    sam = Curator.new

    assert_equal [], sam.artists
  end

  def test_curator_museums_is_empty_on_creation
    sam = Curator.new

    assert_equal [], sam.museums
  end

  def test_curator_photographs_is_empty_on_creation
    sam = Curator.new

    assert_equal [], sam.photographs
  end

  def test_can_add_museum_to_curator
    sam = Curator.new
    sam.add_museum({name: "MoMA"})

    assert_equal "MoMA", sam.museums[0].name
    assert_equal 1, sam.museums.count
  end

  def test_curator_can_collect_multiple_museums
    sam = Curator.new
    sam.add_museum({id: 1, name: "MoMA"})
    sam.add_museum({id: 2, name: "Denver Art Museum"})

    assert_equal "MoMA", sam.museums[0].name
    assert_equal "Denver Art Museum", sam.museums[1].name
    assert_equal 2, sam.museums.count
    assert_equal 1, sam.museums.first.id
    assert_equal 2, sam.museums.last.id
  end

  def test_can_add_artist_to_curator
    sam = Curator.new
    sam.add_artist({id: 1, name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})

    assert_equal "Ansel Adams", sam.artists.first.name
    assert_equal 1, sam.artists.count
    assert_equal 1, sam.artists.first.id
  end

  def test_can_add_photograph
    sam = Curator.new
    sam.add_photograph({id: 1, name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941})

    assert_equal "Moonrise, Hernandez", sam.photographs.first.name
    assert_equal 1, sam.photographs.count
    assert_equal 1, sam.photographs.first.id
  end

  def test_curator_can_find_museum_by_id
    skip
    sam = Curator.new

  end

end

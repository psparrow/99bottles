gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/bottles'

class BottlesTest < Minitest::Test
  def containers
    [Cases, SixPacks, SingleBottles]
  end

  def test_the_first_verse
    expected = <<-VERSE
4 cases and 3 bottles of beer on the wall, 4 cases and 3 bottles of beer.
Take one down and pass it around, 4 cases and 2 bottles of beer on the wall.
VERSE
    assert_equal expected, ::Bottles.new(containers).verse(99)
  end

  def test_another_verse
    expected = <<-VERSE
3 cases, 2 six-packs, and 5 bottles of beer on the wall, 3 cases, 2 six-packs, and 5 bottles of beer.
Take one down and pass it around, 3 cases, 2 six-packs, and 4 bottles of beer on the wall.
VERSE
    assert_equal expected, ::Bottles.new(containers).verse(89)
  end

  def test_verse_2
    expected = <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
    assert_equal expected, ::Bottles.new(containers).verse(2)
  end

  def test_verse_1
    expected = <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
    assert_equal expected, ::Bottles.new(containers).verse(1)
  end

  def test_verse_0
    expected = <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 4 cases and 3 bottles of beer on the wall.
    VERSE
    assert_equal expected, ::Bottles.new(containers).verse(0)
  end

  def test_a_few_verses
    expected = <<-VERSES
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.

1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 4 cases and 3 bottles of beer on the wall.
VERSES
    assert_equal expected, ::Bottles.new(containers).verses(2, 0)
  end

  def test_whole_song
    skip 'WRITE THIS OUT'
  end
end

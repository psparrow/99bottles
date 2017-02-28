gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/bottles'

class BottlesTest < Minitest::Test
  def test_the_first_verse
    expected = <<-VERSE
16 six-packs and 3 bottles of beer on the wall, 16 six-packs and 3 bottles of beer.
Take one down and pass it around, 16 six-packs and 2 bottles of beer on the wall.
VERSE
    assert_equal expected, ::Bottles.new([SixPacks, SingleBottles]).verse(99)
  end

  def test_another_verse
    expected = <<-VERSE
14 six-packs and 5 bottles of beer on the wall, 14 six-packs and 5 bottles of beer.
Take one down and pass it around, 14 six-packs and 4 bottles of beer on the wall.
VERSE
    assert_equal expected, ::Bottles.new([SixPacks, SingleBottles]).verse(89)
  end

  def test_verse_2
    expected = <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
    assert_equal expected, ::Bottles.new([SixPacks, SingleBottles]).verse(2)
  end

  def test_verse_1
    expected = <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
    assert_equal expected, ::Bottles.new([SixPacks, SingleBottles]).verse(1)
  end

  def test_verse_0
    expected = <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 16 six-packs and 3 bottles of beer on the wall.
    VERSE
    assert_equal expected, ::Bottles.new([SixPacks, SingleBottles]).verse(0)
  end

  def test_a_couple_verses
    expected = <<-VERSES
16 six-packs and 3 bottles of beer on the wall, 16 six-packs and 3 bottles of beer.
Take one down and pass it around, 16 six-packs and 2 bottles of beer on the wall.

16 six-packs and 2 bottles of beer on the wall, 16 six-packs and 2 bottles of beer.
Take one down and pass it around, 16 six-packs and 1 bottle of beer on the wall.
VERSES
    assert_equal expected, ::Bottles.new([SixPacks, SingleBottles]).verses(99, 98)
  end

  def test_a_few_verses
    expected = <<-VERSES
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.

1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 16 six-packs and 3 bottles of beer on the wall.
VERSES
    assert_equal expected, ::Bottles.new([SixPacks, SingleBottles]).verses(2, 0)
  end

  def test_the_whole_song
    expected = <<-SONG
16 six-packs and 3 bottles of beer on the wall, 16 six-packs and 3 bottles of beer.
Take one down and pass it around, 16 six-packs and 2 bottles of beer on the wall.

16 six-packs and 2 bottles of beer on the wall, 16 six-packs and 2 bottles of beer.
Take one down and pass it around, 16 six-packs and 1 bottle of beer on the wall.

16 six-packs and 1 bottle of beer on the wall, 16 six-packs and 1 bottle of beer.
Take one down and pass it around, 16 six-packs of beer on the wall.

16 six-packs of beer on the wall, 16 six-packs of beer.
Take one down and pass it around, 15 six-packs and 5 bottles of beer on the wall.

15 six-packs and 5 bottles of beer on the wall, 15 six-packs and 5 bottles of beer.
Take one down and pass it around, 15 six-packs and 4 bottles of beer on the wall.

15 six-packs and 4 bottles of beer on the wall, 15 six-packs and 4 bottles of beer.
Take one down and pass it around, 15 six-packs and 3 bottles of beer on the wall.

15 six-packs and 3 bottles of beer on the wall, 15 six-packs and 3 bottles of beer.
Take one down and pass it around, 15 six-packs and 2 bottles of beer on the wall.

15 six-packs and 2 bottles of beer on the wall, 15 six-packs and 2 bottles of beer.
Take one down and pass it around, 15 six-packs and 1 bottle of beer on the wall.

15 six-packs and 1 bottle of beer on the wall, 15 six-packs and 1 bottle of beer.
Take one down and pass it around, 15 six-packs of beer on the wall.

15 six-packs of beer on the wall, 15 six-packs of beer.
Take one down and pass it around, 14 six-packs and 5 bottles of beer on the wall.

14 six-packs and 5 bottles of beer on the wall, 14 six-packs and 5 bottles of beer.
Take one down and pass it around, 14 six-packs and 4 bottles of beer on the wall.

14 six-packs and 4 bottles of beer on the wall, 14 six-packs and 4 bottles of beer.
Take one down and pass it around, 14 six-packs and 3 bottles of beer on the wall.

14 six-packs and 3 bottles of beer on the wall, 14 six-packs and 3 bottles of beer.
Take one down and pass it around, 14 six-packs and 2 bottles of beer on the wall.

14 six-packs and 2 bottles of beer on the wall, 14 six-packs and 2 bottles of beer.
Take one down and pass it around, 14 six-packs and 1 bottle of beer on the wall.

14 six-packs and 1 bottle of beer on the wall, 14 six-packs and 1 bottle of beer.
Take one down and pass it around, 14 six-packs of beer on the wall.

14 six-packs of beer on the wall, 14 six-packs of beer.
Take one down and pass it around, 13 six-packs and 5 bottles of beer on the wall.

13 six-packs and 5 bottles of beer on the wall, 13 six-packs and 5 bottles of beer.
Take one down and pass it around, 13 six-packs and 4 bottles of beer on the wall.

13 six-packs and 4 bottles of beer on the wall, 13 six-packs and 4 bottles of beer.
Take one down and pass it around, 13 six-packs and 3 bottles of beer on the wall.

13 six-packs and 3 bottles of beer on the wall, 13 six-packs and 3 bottles of beer.
Take one down and pass it around, 13 six-packs and 2 bottles of beer on the wall.

13 six-packs and 2 bottles of beer on the wall, 13 six-packs and 2 bottles of beer.
Take one down and pass it around, 13 six-packs and 1 bottle of beer on the wall.

13 six-packs and 1 bottle of beer on the wall, 13 six-packs and 1 bottle of beer.
Take one down and pass it around, 13 six-packs of beer on the wall.

13 six-packs of beer on the wall, 13 six-packs of beer.
Take one down and pass it around, 12 six-packs and 5 bottles of beer on the wall.

12 six-packs and 5 bottles of beer on the wall, 12 six-packs and 5 bottles of beer.
Take one down and pass it around, 12 six-packs and 4 bottles of beer on the wall.

12 six-packs and 4 bottles of beer on the wall, 12 six-packs and 4 bottles of beer.
Take one down and pass it around, 12 six-packs and 3 bottles of beer on the wall.

12 six-packs and 3 bottles of beer on the wall, 12 six-packs and 3 bottles of beer.
Take one down and pass it around, 12 six-packs and 2 bottles of beer on the wall.

12 six-packs and 2 bottles of beer on the wall, 12 six-packs and 2 bottles of beer.
Take one down and pass it around, 12 six-packs and 1 bottle of beer on the wall.

12 six-packs and 1 bottle of beer on the wall, 12 six-packs and 1 bottle of beer.
Take one down and pass it around, 12 six-packs of beer on the wall.

12 six-packs of beer on the wall, 12 six-packs of beer.
Take one down and pass it around, 11 six-packs and 5 bottles of beer on the wall.

11 six-packs and 5 bottles of beer on the wall, 11 six-packs and 5 bottles of beer.
Take one down and pass it around, 11 six-packs and 4 bottles of beer on the wall.

11 six-packs and 4 bottles of beer on the wall, 11 six-packs and 4 bottles of beer.
Take one down and pass it around, 11 six-packs and 3 bottles of beer on the wall.

11 six-packs and 3 bottles of beer on the wall, 11 six-packs and 3 bottles of beer.
Take one down and pass it around, 11 six-packs and 2 bottles of beer on the wall.

11 six-packs and 2 bottles of beer on the wall, 11 six-packs and 2 bottles of beer.
Take one down and pass it around, 11 six-packs and 1 bottle of beer on the wall.

11 six-packs and 1 bottle of beer on the wall, 11 six-packs and 1 bottle of beer.
Take one down and pass it around, 11 six-packs of beer on the wall.

11 six-packs of beer on the wall, 11 six-packs of beer.
Take one down and pass it around, 10 six-packs and 5 bottles of beer on the wall.

10 six-packs and 5 bottles of beer on the wall, 10 six-packs and 5 bottles of beer.
Take one down and pass it around, 10 six-packs and 4 bottles of beer on the wall.

10 six-packs and 4 bottles of beer on the wall, 10 six-packs and 4 bottles of beer.
Take one down and pass it around, 10 six-packs and 3 bottles of beer on the wall.

10 six-packs and 3 bottles of beer on the wall, 10 six-packs and 3 bottles of beer.
Take one down and pass it around, 10 six-packs and 2 bottles of beer on the wall.

10 six-packs and 2 bottles of beer on the wall, 10 six-packs and 2 bottles of beer.
Take one down and pass it around, 10 six-packs and 1 bottle of beer on the wall.

10 six-packs and 1 bottle of beer on the wall, 10 six-packs and 1 bottle of beer.
Take one down and pass it around, 10 six-packs of beer on the wall.

10 six-packs of beer on the wall, 10 six-packs of beer.
Take one down and pass it around, 9 six-packs and 5 bottles of beer on the wall.

9 six-packs and 5 bottles of beer on the wall, 9 six-packs and 5 bottles of beer.
Take one down and pass it around, 9 six-packs and 4 bottles of beer on the wall.

9 six-packs and 4 bottles of beer on the wall, 9 six-packs and 4 bottles of beer.
Take one down and pass it around, 9 six-packs and 3 bottles of beer on the wall.

9 six-packs and 3 bottles of beer on the wall, 9 six-packs and 3 bottles of beer.
Take one down and pass it around, 9 six-packs and 2 bottles of beer on the wall.

9 six-packs and 2 bottles of beer on the wall, 9 six-packs and 2 bottles of beer.
Take one down and pass it around, 9 six-packs and 1 bottle of beer on the wall.

9 six-packs and 1 bottle of beer on the wall, 9 six-packs and 1 bottle of beer.
Take one down and pass it around, 9 six-packs of beer on the wall.

9 six-packs of beer on the wall, 9 six-packs of beer.
Take one down and pass it around, 8 six-packs and 5 bottles of beer on the wall.

8 six-packs and 5 bottles of beer on the wall, 8 six-packs and 5 bottles of beer.
Take one down and pass it around, 8 six-packs and 4 bottles of beer on the wall.

8 six-packs and 4 bottles of beer on the wall, 8 six-packs and 4 bottles of beer.
Take one down and pass it around, 8 six-packs and 3 bottles of beer on the wall.

8 six-packs and 3 bottles of beer on the wall, 8 six-packs and 3 bottles of beer.
Take one down and pass it around, 8 six-packs and 2 bottles of beer on the wall.

8 six-packs and 2 bottles of beer on the wall, 8 six-packs and 2 bottles of beer.
Take one down and pass it around, 8 six-packs and 1 bottle of beer on the wall.

8 six-packs and 1 bottle of beer on the wall, 8 six-packs and 1 bottle of beer.
Take one down and pass it around, 8 six-packs of beer on the wall.

8 six-packs of beer on the wall, 8 six-packs of beer.
Take one down and pass it around, 7 six-packs and 5 bottles of beer on the wall.

7 six-packs and 5 bottles of beer on the wall, 7 six-packs and 5 bottles of beer.
Take one down and pass it around, 7 six-packs and 4 bottles of beer on the wall.

7 six-packs and 4 bottles of beer on the wall, 7 six-packs and 4 bottles of beer.
Take one down and pass it around, 7 six-packs and 3 bottles of beer on the wall.

7 six-packs and 3 bottles of beer on the wall, 7 six-packs and 3 bottles of beer.
Take one down and pass it around, 7 six-packs and 2 bottles of beer on the wall.

7 six-packs and 2 bottles of beer on the wall, 7 six-packs and 2 bottles of beer.
Take one down and pass it around, 7 six-packs and 1 bottle of beer on the wall.

7 six-packs and 1 bottle of beer on the wall, 7 six-packs and 1 bottle of beer.
Take one down and pass it around, 7 six-packs of beer on the wall.

7 six-packs of beer on the wall, 7 six-packs of beer.
Take one down and pass it around, 6 six-packs and 5 bottles of beer on the wall.

6 six-packs and 5 bottles of beer on the wall, 6 six-packs and 5 bottles of beer.
Take one down and pass it around, 6 six-packs and 4 bottles of beer on the wall.

6 six-packs and 4 bottles of beer on the wall, 6 six-packs and 4 bottles of beer.
Take one down and pass it around, 6 six-packs and 3 bottles of beer on the wall.

6 six-packs and 3 bottles of beer on the wall, 6 six-packs and 3 bottles of beer.
Take one down and pass it around, 6 six-packs and 2 bottles of beer on the wall.

6 six-packs and 2 bottles of beer on the wall, 6 six-packs and 2 bottles of beer.
Take one down and pass it around, 6 six-packs and 1 bottle of beer on the wall.

6 six-packs and 1 bottle of beer on the wall, 6 six-packs and 1 bottle of beer.
Take one down and pass it around, 6 six-packs of beer on the wall.

6 six-packs of beer on the wall, 6 six-packs of beer.
Take one down and pass it around, 5 six-packs and 5 bottles of beer on the wall.

5 six-packs and 5 bottles of beer on the wall, 5 six-packs and 5 bottles of beer.
Take one down and pass it around, 5 six-packs and 4 bottles of beer on the wall.

5 six-packs and 4 bottles of beer on the wall, 5 six-packs and 4 bottles of beer.
Take one down and pass it around, 5 six-packs and 3 bottles of beer on the wall.

5 six-packs and 3 bottles of beer on the wall, 5 six-packs and 3 bottles of beer.
Take one down and pass it around, 5 six-packs and 2 bottles of beer on the wall.

5 six-packs and 2 bottles of beer on the wall, 5 six-packs and 2 bottles of beer.
Take one down and pass it around, 5 six-packs and 1 bottle of beer on the wall.

5 six-packs and 1 bottle of beer on the wall, 5 six-packs and 1 bottle of beer.
Take one down and pass it around, 5 six-packs of beer on the wall.

5 six-packs of beer on the wall, 5 six-packs of beer.
Take one down and pass it around, 4 six-packs and 5 bottles of beer on the wall.

4 six-packs and 5 bottles of beer on the wall, 4 six-packs and 5 bottles of beer.
Take one down and pass it around, 4 six-packs and 4 bottles of beer on the wall.

4 six-packs and 4 bottles of beer on the wall, 4 six-packs and 4 bottles of beer.
Take one down and pass it around, 4 six-packs and 3 bottles of beer on the wall.

4 six-packs and 3 bottles of beer on the wall, 4 six-packs and 3 bottles of beer.
Take one down and pass it around, 4 six-packs and 2 bottles of beer on the wall.

4 six-packs and 2 bottles of beer on the wall, 4 six-packs and 2 bottles of beer.
Take one down and pass it around, 4 six-packs and 1 bottle of beer on the wall.

4 six-packs and 1 bottle of beer on the wall, 4 six-packs and 1 bottle of beer.
Take one down and pass it around, 4 six-packs of beer on the wall.

4 six-packs of beer on the wall, 4 six-packs of beer.
Take one down and pass it around, 3 six-packs and 5 bottles of beer on the wall.

3 six-packs and 5 bottles of beer on the wall, 3 six-packs and 5 bottles of beer.
Take one down and pass it around, 3 six-packs and 4 bottles of beer on the wall.

3 six-packs and 4 bottles of beer on the wall, 3 six-packs and 4 bottles of beer.
Take one down and pass it around, 3 six-packs and 3 bottles of beer on the wall.

3 six-packs and 3 bottles of beer on the wall, 3 six-packs and 3 bottles of beer.
Take one down and pass it around, 3 six-packs and 2 bottles of beer on the wall.

3 six-packs and 2 bottles of beer on the wall, 3 six-packs and 2 bottles of beer.
Take one down and pass it around, 3 six-packs and 1 bottle of beer on the wall.

3 six-packs and 1 bottle of beer on the wall, 3 six-packs and 1 bottle of beer.
Take one down and pass it around, 3 six-packs of beer on the wall.

3 six-packs of beer on the wall, 3 six-packs of beer.
Take one down and pass it around, 2 six-packs and 5 bottles of beer on the wall.

2 six-packs and 5 bottles of beer on the wall, 2 six-packs and 5 bottles of beer.
Take one down and pass it around, 2 six-packs and 4 bottles of beer on the wall.

2 six-packs and 4 bottles of beer on the wall, 2 six-packs and 4 bottles of beer.
Take one down and pass it around, 2 six-packs and 3 bottles of beer on the wall.

2 six-packs and 3 bottles of beer on the wall, 2 six-packs and 3 bottles of beer.
Take one down and pass it around, 2 six-packs and 2 bottles of beer on the wall.

2 six-packs and 2 bottles of beer on the wall, 2 six-packs and 2 bottles of beer.
Take one down and pass it around, 2 six-packs and 1 bottle of beer on the wall.

2 six-packs and 1 bottle of beer on the wall, 2 six-packs and 1 bottle of beer.
Take one down and pass it around, 2 six-packs of beer on the wall.

2 six-packs of beer on the wall, 2 six-packs of beer.
Take one down and pass it around, 1 six-pack and 5 bottles of beer on the wall.

1 six-pack and 5 bottles of beer on the wall, 1 six-pack and 5 bottles of beer.
Take one down and pass it around, 1 six-pack and 4 bottles of beer on the wall.

1 six-pack and 4 bottles of beer on the wall, 1 six-pack and 4 bottles of beer.
Take one down and pass it around, 1 six-pack and 3 bottles of beer on the wall.

1 six-pack and 3 bottles of beer on the wall, 1 six-pack and 3 bottles of beer.
Take one down and pass it around, 1 six-pack and 2 bottles of beer on the wall.

1 six-pack and 2 bottles of beer on the wall, 1 six-pack and 2 bottles of beer.
Take one down and pass it around, 1 six-pack and 1 bottle of beer on the wall.

1 six-pack and 1 bottle of beer on the wall, 1 six-pack and 1 bottle of beer.
Take one down and pass it around, 1 six-pack of beer on the wall.

1 six-pack of beer on the wall, 1 six-pack of beer.
Take one down and pass it around, 5 bottles of beer on the wall.

5 bottles of beer on the wall, 5 bottles of beer.
Take one down and pass it around, 4 bottles of beer on the wall.

4 bottles of beer on the wall, 4 bottles of beer.
Take one down and pass it around, 3 bottles of beer on the wall.

3 bottles of beer on the wall, 3 bottles of beer.
Take one down and pass it around, 2 bottles of beer on the wall.

2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.

1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 16 six-packs and 3 bottles of beer on the wall.
    SONG
    assert_equal expected, ::Bottles.new([SixPacks, SingleBottles]).song
  end
end

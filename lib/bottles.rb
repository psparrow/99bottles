require_relative 'bottle_collection'

class Bottles
  INITIAL_VALUE = 99

  ACTIONS = Hash.new 'Take one down and pass it around'
  ACTIONS[1] = 'Take it down and pass it around'
  ACTIONS[0] = 'Go to the store and buy some more'

  def song
    verses INITIAL_VALUE, 0
  end

  def verses high, low
    high.downto(low).map { |count| verse count }.join "\n"
  end

  def verse count
    collection = BottleCollection.new count

    <<~VERSE
    #{collection.to_s.capitalize} of beer on the wall, #{collection} of beer.
    #{ACTIONS[count]}, #{collection.drink} of beer on the wall.
    VERSE
  end
end

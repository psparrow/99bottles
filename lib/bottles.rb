require_relative 'container'
require_relative 'six_packs'
require_relative 'single_bottles'
require_relative 'bottle_collection'

class Bottles
  INITIAL_VALUE = 99

  ACTIONS = Hash.new 'Take one down and pass it around'
  ACTIONS[1] = 'Take it down and pass it around'
  ACTIONS[0] = 'Go to the store and buy some more'

  def initialize containers = [SingleBottles]
    @containers = containers
  end

  def song
    verses INITIAL_VALUE, 0
  end

  def verses high, low
    high.downto(low).map { |count| verse count }.join "\n"
  end

  def verse count
    collection = BottleCollection.new count, @containers

    "#{collection.to_s.capitalize} of beer on the wall, #{collection} of beer.\n"\
    "#{ACTIONS[count]}, "\
    "#{collection.drink || collection.set_count(INITIAL_VALUE)} "\
    "of beer on the wall.\n"
  end
end

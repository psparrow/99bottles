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
    bottles = Hash.new { |hash, key| "#{key} bottles" }
    bottles[1] = '1 bottle'
    bottles[0] = 'no more bottles'

    remaining = count > 0 ? count - 1 : INITIAL_VALUE

    <<~VERSE
    #{bottles[count].capitalize} of beer on the wall, #{bottles[count]} of beer.
    #{ACTIONS[count]}, #{bottles[remaining]} of beer on the wall.
    VERSE
  end
end

class Bottles
  def song
    verses 99, 0
  end

  def verses high, low
    high.downto(low).map { |count| verse count }.join "\n"
  end

  def verse count
    bottles = Hash.new { |hash, key| "#{key} bottles" }
    bottles[1] = '1 bottle'
    bottles[0] = 'no more bottles'

    actions = Hash.new 'Take one down and pass it around'
    actions[1] = 'Take it down and pass it around'
    actions[0] = 'Go to the store and buy some more'

    remaining = count > 0 ? count - 1 : 99

    <<~VERSE
    #{bottles[count].capitalize} of beer on the wall, #{bottles[count]} of beer.
    #{actions[count]}, #{bottles[remaining]} of beer on the wall.
    VERSE
  end
end

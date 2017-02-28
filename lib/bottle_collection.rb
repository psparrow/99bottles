class BottleCollection
  COLLECTION = Hash.new { |hash, key| "#{key} bottles" }
  COLLECTION[1] = '1 bottle'
  COLLECTION[0] = 'no more bottles'

  def initialize count
    @count = count
  end
  
  def to_s
    COLLECTION[@count]
  end

  def drink
    @count -= 1
    self
  end
end

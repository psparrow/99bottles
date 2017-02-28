class SingleBottles
  COLLECTION = Hash.new { |hash, key| "#{key} bottles" }
  COLLECTION[1] = '1 bottle'
  COLLECTION[0] = 'no more bottles'
  
  def initialize count
    @count = count
  end
  
  def to_s
    COLLECTION[@count]
  end
  
  def remaining_bottles
    0
  end
end

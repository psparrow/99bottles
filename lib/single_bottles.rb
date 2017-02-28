class SingleBottles
  attr_reader :remaining_bottles, :blank_if_zero, :count
  
  COLLECTION = Hash.new { |hash, key| "#{key} bottles" }
  COLLECTION[1] = '1 bottle'
  COLLECTION[0] = 'no more bottles'
  
  def initialize count, blank_if_zero
    @count = count
    @remaining_bottles = 0
    @blank_if_zero = blank_if_zero
  end
  
  def to_s
    return '' if count == 0 && blank_if_zero 
    COLLECTION[count]
  end
end

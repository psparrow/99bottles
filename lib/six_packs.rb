class SixPacks
  attr_reader :remaining_bottles, :blank_if_zero, :count

  COLLECTION = Hash.new { |hash, key| "#{key} six-packs" }
  COLLECTION[1] = '1 six-pack'
  COLLECTION[0] = ''
  
  def initialize count, blank_if_zero
    @count, @remaining_bottles = count.divmod 6
    @blank_if_zero = blank_if_zero
  end
  
  def to_s
    return '' if count == 0 && blank_if_zero 
    COLLECTION[count]
  end
end

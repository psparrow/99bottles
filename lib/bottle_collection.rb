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
    return false if @count < 1

    @count -= 1

    self
  end

  def set_count count
    @count = count

    self
  end
end

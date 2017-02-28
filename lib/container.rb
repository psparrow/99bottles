class Container
  attr_reader :remaining_bottles, :blank_if_zero, :count

  def initialize count, blank_if_zero
    @count = count
    @blank_if_zero = blank_if_zero
    @remaining_bottles = 0
    calculate_count_and_remaining_bottles
  end

  def calculate_count_and_remaining_bottles
  end

  def to_s
    return '' if count == 0 && blank_if_zero

    collection[count]
  end

  def collection
    self.class::COLLECTION
  end
end

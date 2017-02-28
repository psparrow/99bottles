class Cases < Container
  COLLECTION = Hash.new { |hash, key| "#{key} cases" }
  COLLECTION[1] = '1 case'
  COLLECTION[0] = ''
  
  def calculate_count_and_remaining_bottles
    @count, @remaining_bottles = count.divmod 24
  end
end

class SixPacks < Container
  COLLECTION = Hash.new { |hash, key| "#{key} six-packs" }
  COLLECTION[1] = '1 six-pack'
  COLLECTION[0] = ''
  
  def calculate_count_and_remaining_bottles
    @count, @remaining_bottles = count.divmod 6
  end
end

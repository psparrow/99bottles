class BottleCollection
  def initialize count, containers
    @count = count
    @containers = containers
  end
  
  def to_s
    english_join fill_containers
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

  private
  
  def fill_containers
    remaining = @count
    
    @containers.each_with_object([]) do |container_class, result|
      container = container_class.new remaining, !result.empty?
      remaining = container.remaining_bottles
      result << container.to_s unless container.to_s.empty?
    end
  end

  def english_join array
    return array.join if array.nil? || array.length <= 1

    connector = array.length > 2 ? ', and ' : ' and '

    "#{array[0..-2].join(', ')}#{connector}#{array[-1]}"
  end
end

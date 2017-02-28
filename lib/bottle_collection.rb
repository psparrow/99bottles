class BottleCollection
  def initialize count, containers
    @count = count
    @containers = containers
  end
  
  def to_s
    remaining = @count

    @containers.each_with_object([]) do |container_class, result|
      container = container_class.new remaining, !result.empty?
      remaining = container.remaining_bottles
      result << container.to_s unless container.to_s.empty?
    end.join ' and '
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

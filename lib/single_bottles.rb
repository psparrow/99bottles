class SingleBottles < Container
  COLLECTION = Hash.new { |hash, key| "#{key} bottles" }
  COLLECTION[1] = '1 bottle'
  COLLECTION[0] = 'no more bottles'
end

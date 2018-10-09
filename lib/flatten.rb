require('pry')
require('flatten')

# Flatten class and flatten_array method
class Flatten
  def initialize(array)
    @array = array
  end

  def flatten_array
    original = @array.to_s
    middle = original[1..-2]
    new_array = middle.split(//)
    x = 0
    final_array = []
    while x < new_array.count
      arr = new_array[x]
      if (arr == '[') | (arr == ']') | (arr == ' ') | (arr == ',')
        final_array.push(nil)
      else
        arr = arr.to_i
        final_array.push(arr)
      end
      x += 1
    end
    final_array.compact!
  end
end

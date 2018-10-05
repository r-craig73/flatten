require('rspec')
require('pry')
require('flatten')

# Anagrams class and compare_words method
class Flatten
  def initialize(array1)
    @array1 = array1
  end

  def flats
    original = @array1.to_s
    new_array = original.split
    final_array = []
    new_array.map do |i|
      if i.include? ','
        final_array.push('')
      else
        final_array.push(i)
      end
    end
  end
end

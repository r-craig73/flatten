require('rspec')
require('flatten')

describe(Flatten) do
  describe('flatten_array') do
    it('removes "[" and "]" subarray characters to create a single array') do
      array = Flatten.new([[1, 2, [3]], 4])
      expect(array.flatten_array).to(eq([1, 2, 3, 4]))
    end
  end
end

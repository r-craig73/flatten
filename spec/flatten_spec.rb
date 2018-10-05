require('rspec')
require('pry')
require('flatten')

describe(Flatten) do
  describe('flats') do
    it('removes extra [ & ] characters to create a single array') do
      array = Flatten.new([1, 2, [3], [4, 5]])
      expect(array.flats).to(eq([1, 2, 3, 4, 5]))
    end
  end
end

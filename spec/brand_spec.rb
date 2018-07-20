require('spec_helper')

describe(Brand) do
  describe('#name') do
    it('will validate name is not blank on brand create') do
      brand1 = Brand.create({:name => "Bike"})
      brand2 = Brand.create({:name => ""})
      expect(Brand.all).to(eq([brand1]))
    end
  end
end

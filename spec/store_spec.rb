require('spec_helper')

describe(Store) do
  describe('#title') do
    it('will validate title is not blank on new store create') do
      store1 = Store.create({:title => "Shoes"})
      store2 = Store.create({:title => ""})
      expect(Store.all).to(eq([store1]))
    end
  end

  describe('#title') do
    it('a store can only have a length of 100 char title') do
      store1 = Store.create({:title => "Shoes"})
      store2 = Store.create({:title => "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"})
      expect(Store.all).to(eq([store1]))
    end
  end

  describe('#title') do
    it('will upcase the first letter of title') do
      store1 = Store.create({:title => "frog"})
      expect(Store.all.first.title).to(eq("Frog"))
    end
  end
end

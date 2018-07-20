require('spec_helper')

describe(Store) do
  describe('#title') do
    it('will validate title is not blank on new store create') do
      store1 = Store.create({:title => "Shoes"})
      store2 = Store.create({:title => ""})
      expect(Store.all).to(eq([store1]))
    end
  end
  #
  # describe('#tag') do
  #   it('a recipe can have many tags') do
  #     recipe = Recipe.create({:title => "pie"})
  #     tag1 = recipe.tags.create({:tag_name => "sweet"})
  #     tag2 = recipe.tags.create({:tag_name => "crusty"})
  #     expect(recipe.tags).to(eq([tag1, tag2]))
  #   end
  # end
  #
  # describe('#amounts') do
  #   it('') do
  #     recipe = Recipe.create({:title => 'grasshopper grains'})
  #     ingredient = recipe.ingredients.create({:ingredient_name => 'wheat'})
  #     amount = Amount.all.last
  #     amount.update(amount: '2 cups')
  #     expect(recipe.amounts[0].amount).to include('2 cups')
  #   end
  # end
end

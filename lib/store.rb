class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands
  validates(:title, {:presence => true, :uniqueness => true})

private

  def capitalize_description
    self.title=(title().capitalize())
  end
end

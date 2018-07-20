class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates(:name, {:presence => true, :uniqueness => true})

private

  def capitalize_description
    self.title=(title().capitalize())
  end
end

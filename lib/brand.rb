class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates(:name, {:presence => true, :uniqueness => true})
  validates(:price, {:presence => true})
  validates_length_of :name, :maximum => 100

  before_validation :capitalize_name
  before_validation :convert_to_dollars

private

  def capitalize_name
    self.name=(name().capitalize())
  end

  def convert_to_dollars
    self.price=(price().to_i.round(2))
  end
end

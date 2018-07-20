class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands
  validates(:title, {:presence => true, :uniqueness => true})
end

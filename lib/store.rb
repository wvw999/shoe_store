class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands
  validates(:title, {:presence => true, :uniqueness => true})
  validates_length_of :title, :maximum => 100

  before_validation :capitalize_title

private

  def capitalize_title
    self.title=(title().capitalize())
  end
end

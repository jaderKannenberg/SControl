class Service < ActiveRecord::Base
  has_many :service_categories
  has_many :categories, through: :service_categories
  attr_accessible :description, :name, :price, :category_tokens
  attr_reader :category_tokens
  
  def category_tokens=(tokens)
    self.category_ids = Category.ids_from_tokens(tokens)
  end
end

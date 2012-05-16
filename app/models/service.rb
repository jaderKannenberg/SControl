class Service < ActiveRecord::Base
  has_many :categories, through: :service_categories
  attr_accessible :description, :name, :price
end

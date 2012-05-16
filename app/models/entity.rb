class Entity < ActiveRecord::Base
  attr_accessible :name, :profile

  validates :name, presence: true
  validates :profile, inclusion: { in: [1,2] } 
end

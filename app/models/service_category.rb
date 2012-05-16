class ServiceCategory < ActiveRecord::Base
  belongs_to :service
  belongs_to :category
  attr_accessible :service_id, :category_id
end

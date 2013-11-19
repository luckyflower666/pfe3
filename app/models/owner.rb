class Owner < ActiveRecord::Base
  belongs_to :User
  has_many :Store
end

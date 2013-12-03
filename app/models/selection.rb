class Selection < ActiveRecord::Base
  belongs_to :Visit
  has_many :Order
  has_many :Item
end

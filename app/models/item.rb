class Item < ActiveRecord::Base
  belongs_to :Selection
  has_many :Food
  has_many :Clothing
end

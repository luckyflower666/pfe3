class Store < ActiveRecord::Base
  belongs_to :Owner
  has_many :Visit
  self.inheritance_column = nil
end

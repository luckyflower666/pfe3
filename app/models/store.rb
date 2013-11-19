class Store < ActiveRecord::Base
  belongs_to :Owner
  self.inheritance_column = nil
end

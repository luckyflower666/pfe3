class Visit < ActiveRecord::Base
  belongs_to :Client
  belongs_to :Store
  has_many :Selection
end

class Visit < ActiveRecord::Base
  belongs_to :Client
  belongs_to :Store
end

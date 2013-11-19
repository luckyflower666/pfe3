class User < ActiveRecord::Base
  has_many :Client
  has_many :Owner
  has_one :Parse_datum
end

class Client < ActiveRecord::Base
  belongs_to :User
  has_one :Payment_datum
  has_one :Social_datum
  has_many :Preference
  has_one :Installation_datum
  has_one :Visit
end

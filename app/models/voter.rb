class Voter < ActiveRecord::Base
  has_many :votes

  validates :name, presence: true, uniqueness: true
  validates :party_name, presence: true

end

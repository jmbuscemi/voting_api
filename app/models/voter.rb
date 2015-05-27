class Voter < ActiveRecord::Base
  has_many :votes

  validates :name, presence: true, uniqueness: true

end

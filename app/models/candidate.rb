class Candidate < ActiveRecord::Base
  has_many :votes

  validates :name, presence: true
  validates :hometown, presence: true
  validates :district, presence: true
  validates :party_name, presence: true

end

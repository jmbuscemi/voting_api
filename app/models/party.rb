class Party < ActiveRecord::Base
  has_many :candidates
  has_many :voters
  
end

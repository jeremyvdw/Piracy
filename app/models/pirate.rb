class Pirate < ActiveRecord::Base
  has_many :parrots
  
  accepts_nested_attributes_for :parrots
end

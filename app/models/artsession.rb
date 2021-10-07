class Artsession < ApplicationRecord
  belongs_to :customergroup
  has_many :artpieces, dependent: :destroy
  
  accepts_nested_attributes_for :artpieces
end

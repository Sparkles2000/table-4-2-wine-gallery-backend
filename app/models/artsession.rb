class Artsession < ApplicationRecord
  belongs_to :customergroup
  has_many :artpieces, dependent: :destroy
end

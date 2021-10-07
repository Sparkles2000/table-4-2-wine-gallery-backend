class Artsession < ApplicationRecord
  belongs_to :customergroup
  has_many :artsessions, dependent: :destroy
end

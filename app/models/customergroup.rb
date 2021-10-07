class Customergroup < ApplicationRecord
    has_many :artsessions, dependent: :destroy
    has_many :artpieces, through: :artsessions
    has_many :brandofwines, dependent: :destroy
    has_many :brandofwines, through: :winepurchases
end

class Customergroup < ApplicationRecord
    has_many :artsessions, dependent: :destroy
    has_many :artpieces, through: :artsessions
    has_many :winepurchases, dependent: :destroy
    has_many :brandofwines, dependent: :destroy
    has_many :brandofwines, through: :winepurchases
    
    accepts_nested_attributes_for :artpieces
    accepts_nested_attributes_for :artsessions
    accepts_nested_attributes_for :brandofwines
    accepts_nested_attributes_for :winepurchases
end

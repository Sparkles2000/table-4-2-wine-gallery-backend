class Brandofwine < ApplicationRecord
    has_many :customergroups
    has_many :customergroups, through: :winepurchases
end

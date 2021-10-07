class Brandofwine < ApplicationRecord
    class Customergroup < ApplicationRecord
        has_many :customergroups, dependent: :destroy
        has_many :customergroups, through: :winepurchases
    end
end

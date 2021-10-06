class Winepurchase < ApplicationRecord
  belongs_to :customergroup
  belongs_to :brandofwine
end

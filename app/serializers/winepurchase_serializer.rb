class WinepurchaseSerializer < ActiveModel::Serializer
    attributes :purchasepackage, :ordered
  
    belongs_to :customergroup
    belongs_to :brandofwine
  end
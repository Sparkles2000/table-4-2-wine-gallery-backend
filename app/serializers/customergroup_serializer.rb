class CustomergroupSerializer < ActiveModel::Serializer
    attributes :party, :partyquantity, :customerstatus
  
    has_many :artsessions
    has_many :winepurchases
    has_many :artpieces
    has_many :brandofwines
  end
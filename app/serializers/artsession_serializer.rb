class ArtsessionSerializer < ActiveModel::Serializer
    attributes :artstyle, :price, :sessiontype, :piecespergroup
    belongs_to :customergroup
    has_many :artpieces
  end
class ArtpieceSerializer < ActiveModel::Serializer
    attributes :artists, :piece, :artstyle, :img_src
  
    belongs_to :artsession
  end
class BrandofwineSerializer < ActiveModel::Serializer
    attributes :brand, :age, :winetype, :price, :drysweet, :alcoholcontent, :img_src

    has_many :winepurchases
  end
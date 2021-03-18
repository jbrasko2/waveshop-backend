class SynthSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :image, :price, :short_desc
end

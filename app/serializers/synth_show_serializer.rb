class SynthShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price, :short_desc, :long_desc, :stock
end


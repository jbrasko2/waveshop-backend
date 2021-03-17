class SynthSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :image, :price, :shortDesc

  def shortDesc
    object.short_desc
  end

end

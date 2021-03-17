class SynthShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price, :shortDesc, :longDesc, :stock

  def shortDesc
    object.short_desc
  end

  def longDesc
    object.long_desc
  end

end


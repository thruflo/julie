
class ThumbImageField < ::Spontaneous::FieldTypes::ImageField
  size :thumb do
    # XXX
    crop 193, 109
    optimize!
  end  
end
ThumbImageField.register(:thumb_image)

class FeatureImageField < ThumbImageField
  size :large do
    # XXX
    crop 620, 349
    optimize!
  end
end

class HomepageImageField < ::Spontaneous::FieldTypes::ImageField
  # XXX can we just have, e.g.: a fixed width?
  size :raw do
    #crop 193, 109
    optimize!
  end
end
HomepageImageField.register(:home_image)

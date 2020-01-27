module PropertiesHelper

  def property_thumbnail property
    img = property.photo.present? ? property.photo.thumb.url : "placeholder.png"
    image_tag img, class: "property-thumb"
  end

  def property_photo property
    img = property.photo.present? ? property.photo.url : "placeholder.png"
    image_tag img, class: "property-photo"
  end

  def property_photo_url property
    property.photo.present? ? property.photo.url : assset_url("placeholder.png")
  end
end

class ProductSerializer < ActiveModel::Serializer
  attributes  :product_name ,:product_description

  def product_name
    object.title
  end
  def product_description
    object.description
  end
end

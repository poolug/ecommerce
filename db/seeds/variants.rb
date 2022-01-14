10.times do |i|
  products = Product.all
  colors = Color.all
  size = Size.all
  Variant.create(
    product_id: Product.find(i+1).id,
    color_id: Color.find(i+1).id,
    size_id: Size.find(i+1).id,
    stock: rand(10..90)
  )
end
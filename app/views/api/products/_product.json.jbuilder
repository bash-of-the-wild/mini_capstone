json.id product.id
json.name product.name
json.description product.description

json.image_url product.image_url
json.is_discounted product.is_discounted?
if product.is_discounted?
  json.sale_message "This is a good deal"
end

json.price product.price
json.tax product.tax
json.total product.total

json.formatted do 
  json.price number_to_currency(product.price)
  json.tax number_to_currency(product.tax)
  json.total number_to_currency(product.total)
end
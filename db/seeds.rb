# Product.create!([
#   {name: "WNYX Mug", price: "2.0", image_url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg", description: "Get your morning news once you wake up with a cup of joe from... well Joe.", in_stock: true},
#   {name: "Hitchhiker's Guide to the Galaxy", price: "42.0", image_url: "http://www.notcot.com/images/guide.gif", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", in_stock: true},
#   {name: "Lightsaber", price: "270.0", image_url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", in_stock: true},
#   {name: "Space Cowboy Laser Gun", price: "170.0", image_url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", description: "This weapon has no other description than, Shiney!", in_stock: true},
#   {name: "DnD Dice set", price: "57.0", image_url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", description: "Take down mighty dragons with this timeless set of 20 sided wonders", in_stock: true},
#   {name: "Sonic Screwdriver", price: "9.0", image_url: "https://dyn0.media.forbiddenplanet.com/products/28577492.jpg", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", in_stock: true},
#   {name: "Yoda sleeping bag", price: "40.0", image_url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png", description: "For real", in_stock: true}
# ])


# products = Product.all

# products.each do |product|
#   image = Image.new(url: product.image_url, product_id: product.id)
#   image.save
# end


# Product.all.each { |product| Image.create(url: product.image_url, product_id: product.id) }



Category.create(name: "Cheap")
Category.create(name: "Wearable")
Category.create(name: "Damage")
Category.create(name: "Home Goods")

# Cheap products
ProductCategory.create(category_id: 1, product_id: 1)
ProductCategory.create(category_id: 1, product_id: 2)
ProductCategory.create(category_id: 1, product_id: 6)
ProductCategory.create(category_id: 1, product_id: 7)

# Wearable products
ProductCategory.create(category_id: 2, product_id: 3)
ProductCategory.create(category_id: 2, product_id: 4)
ProductCategory.create(category_id: 2, product_id: 8)

# Damage products
ProductCategory.create(category_id: 3, product_id: 3)
ProductCategory.create(category_id: 3, product_id: 4)
ProductCategory.create(category_id: 3, product_id: 5)
ProductCategory.create(category_id: 3, product_id: 8)
ProductCategory.create(category_id: 3, product_id: 9)

# Home goods
ProductCategory.create(category_id: 4, product_id: 1)
ProductCategory.create(category_id: 4, product_id: 5)
ProductCategory.create(category_id: 4, product_id: 6)
ProductCategory.create(category_id: 4, product_id: 2)
ProductCategory.create(category_id: 4, product_id: 7)
ProductCategory.create(category_id: 4, product_id: 8)

# [
# [1, "WNYX Mug"], 
# [2, "Hitchhiker's Guide to the Galaxy"], 
# [3, "Lightsaber"], 
# [4, "Space Cowboy Laser Gun"], 
# [5, "DnD Dice set"], 
# [6, "Sonic Screwdriver"], 
# [7, "Yoda sleeping bag"], 
# [8, "Pikachu"], 
# [9, "Evil Pikachu"]
# ]

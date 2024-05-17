# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end




Dog.create(species: "American Bully", color: "White with spots", weight: 53, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Champion_Charlie_Muscles_%282%29.jpg/800px-Champion_Charlie_Muscles_%282%29.jpg")
Dog.create(species: "Dalmation", color: "Black spots, white coat", weight: 60, image_url: "https://cdn.britannica.com/47/236047-050-F06BFC5E/Dalmatian-dog.jpg")
Dog.create(species: "Beagle", color: "Brown, black, white", weight: 30, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-yAgneSMYkKZg2XLlLKNsM_y94ZZelqivueqCCuND8Q&s")
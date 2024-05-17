# json.extract! dog, :id, :created_at, :updated_at
# json.url dog_url(dog, format: :json)


json.id dog.id
json.species dog.species
json.color dog.color
json.weight dog.weight
json.image_url dog.image_url
json.created_at dog.created_at
json.updated_at dog.updated_at
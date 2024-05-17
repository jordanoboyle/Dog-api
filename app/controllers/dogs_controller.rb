class DogsController < ApplicationController

  def create
    @dog = Dog.create(
      species: "English Setter", 
      color: "Black or brown spots, white coat", 
      weight: 40, 
      image_url: "https://taglec.com/cdn/shop/articles/1-1667225728945_600x.jpg?v=1667225927"
      )
    render template: "dogs/show"
  end
end

class DogsController < ApplicationController

  def create
    @dog = Dog.create(
      species: params[:species],
      color: params[:color],
      weight: params[:weight],
      image_url: params[:image_url]
      )
    render template: "dogs/show"
  end

  def index
    @dogs = Dog.all
    render template: "dogs/index"
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render template: "dogs/show"
  end

  def update
    @dog = Dog.find_by(id: params[:id])
    @dog.update(
      species: params[:species] || @dog.species,
      color: params[:color] || @dog.color,
      weight: params[:weight] || @dog.weight,
      image_url: params[:image_url] || @dog.image_url,
    )
    render template: "dogs/show"  # with .update you do not need to save
  end

  def destroy
    @dog = Dog.find_by(id: params[:id])
    @dog.destroy
    render template: "dogs/show"
  end
end

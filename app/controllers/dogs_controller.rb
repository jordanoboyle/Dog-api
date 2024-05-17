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
end

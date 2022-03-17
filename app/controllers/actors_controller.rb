class ActorsController < ApplicationController
  
  def index
    actor = Actor.all
    render json: actor.as_json
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.as_json
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age]
    )
    # actor.save
    render json: actor.as_json
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.title = params[:title] || actor.title
    actor.year = params[:year] || actor.year
    actor.plot = params[:plot] || actor.plot
    actor.director = params[:director] || actor.director
    actor.english = params[:english] || actor.english
    actor.save
    render json: actor.as_json
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: "Your actor was deleted!".as_json
  end
end



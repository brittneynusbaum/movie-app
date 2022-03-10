class ActorsController < ApplicationController
  def list_by_id
    benedict = Actor.find_by(id: 6)
    render json: benedict.to_json
  end

  def list_all
    actors = Actor.all
    render json: actors.to_json
  end
end



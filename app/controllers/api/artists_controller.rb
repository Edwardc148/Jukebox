class Api::ArtistsController < ApplicationController

  def show
    @artist = Artist.find_by(id: params[:id])
    if @artist
      render :show
    else
      render json: ["Page Not Found"], status: 404
    end
  end

end

class Api::SearchesController < ApplicationController

  def index
    search_value = params[:searchValue]
    @artists = Artist.where("name ILIKE ?", "%#{search_value}%")
    @songs = Song.where('name ILIKE ?', "%#{search_value}%")
  end
  
end

class Api::StationsController < ApplicationController

  def index
    @stations = Station.all
    render :index
  end

  def create
    @station = Station.new(station_params)
    @station.user_id = current_user.id
    if @station.save
      @station.song_ids = Song.all.pluck(:id).shuffle!
      @station.image_url = Song.find(@station.song_ids.sample).album.image_url
      @station.save
      render :show
    else
      render json: @station.errors.full_messages, status: 422
    end
  end

  def show
    @station = Station.find_by(id: params[:id])
    render :show
  end

  def destroy
    @station = current_user.stations.find_by(id: params[:id])
    if @station
      @station.destroy
      render :show
    end
  end

  private

  def station_params
    params.require(:station).permit(:name)
  end
end

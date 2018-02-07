class Api::StationsController < ApplicationController

  def index
    @stations = Station.all
    render :index
  end

  def create
    @station = Station.new(station_params)
    @station.user_id = current_user.id
    if @station.save
      @station.song_ids = Song.all.pluck(:id)
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
    end
  end

  private

  def station_params
    params.require(:station).permit(:name)
  end
end

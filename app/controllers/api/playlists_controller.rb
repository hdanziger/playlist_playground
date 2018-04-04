class Api::PlaylistsController < ApplicationController

  before_action :set_playlist, only: [:edit, :show, :update, :destory]

  def index
    render json: Playlist.all
  end

  def create
    playlist = Playlist.new(playlist_params)
    if playlist.save
      render json: playlist
    else
      render json: {message: playlist.errors }, status: 400
    end
  end

  def show
    render json: @playlist
  end

  def update
    if @playlist.update(playlist_params)
      render json: @playlist
    else
      render json: {message: @playlist.errors }, status: 400
    end
  end

  def destory
    if @playlist.destroy
      render status: 204
    else
      render json: {message: "unable to remove playlist"}, status: 400
    end
  end

  private

  def set_playlist
    @playlist = Playlist.find(params[:id])
  end

  def playlist_params
    params.require(:playlist).permit(
      :id,
      :title,
      :genre,
      :img_url,
      songs_attributes: [ :id, :title ]
    )
  end
end

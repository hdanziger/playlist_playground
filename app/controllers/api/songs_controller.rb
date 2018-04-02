class Api::SongsController < ApplicationController

  before_action :set_song, only: [:edit, :show, :update, :destory]
  before_action :set_playlist

  def index
    render json: Song.all

  def create
    song = @playlist.songs.new(song_params)
    if song.save
      render json: song
    else
      render json: {message: song.errors }, status: 400
    end
  end

  def update
    if @song.update(playlist_params)
      render json: @song
    else
      render json: {message: @song.errors }, status: 400
    end
  end

  def destory
    if @song.destroy
      render status: 204
    else
      render json: {message: "unable to remove song"}, status: 400
    end
  end

  private

  def set_song
    @song = Song.find_by(id: params[:id])
  end

  def set_playlist
    @playlist = Playlist.find_by(id: params[:playlist_id])
  end

  def song_params
    params.require(:song).permit(:title, :artist, :playlist_id)
  end

end

class SetlistsController < ApplicationController
  before_action :set_setlist, only: [:show, :edit, :update, :destroy]

  def index
    @setlists = Setlist.all.order(songs_count: :desc)
  end

  def show
  end

  def new
    @setlist = Setlist.new
  end

  def edit
  end

  def create
    @setlist = Setlist.new(setlist_params)

    if @setlist.save
      set_positions(setlist_params[:song_ids])
      redirect_to @setlist, notice: 'Setlist was successfully created.'
    else
      render :new
    end
  end

  def update
    if @setlist.update(setlist_params)
      set_positions(setlist_params[:song_ids])
      redirect_to @setlist, notice: 'Setlist was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @setlist.destroy
    redirect_to setlists_url, notice: 'Setlist was successfully destroyed.'
  end

  private

  def set_positions(song_ids)
    song_ids.each_with_index do |song_id, index|
      @setlist.setlist_songs.find_by(song_id: song_id).update_attribute(:position, index + 1)
    end
  end

  def set_setlist
    @setlist = Setlist.find(params[:id])
  end

  def setlist_params
    params.require(:setlist).permit(
      :name,
      :notes,
      song_ids: []
    )
  end
end

class SetlistsController < ApplicationController
  before_action :set_setlist, only: [:show, :edit, :update, :destroy]

  def index
    @setlists = Setlist.all
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
      redirect_to @setlist, notice: 'Setlist was successfully created.'
    else
      render :new
    end
  end

  def update
    if @setlist.update(setlist_params)
      redirect_to @setlist, notice: 'Setlist was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @setlist.destroy
      redirect_to setlists_url, notice: 'Setlist was successfully destroyed.'
    end
  end

  private

  def set_setlist
    @setlist = Setlist.find(params[:id])
  end

  def setlist_params
    params.require(:setlist).permit(:name, :notes)
  end
end

class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    if params[:search]
      @entries = Entry.search(params[:search]).order("created_at DESC")
    else
      @entries = Entry.all.order("created_at DESC")
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

    def entry_params
      params.require(:entry).permit(:wine, :picture, :type, :price, :comments, :rating)
    end
end

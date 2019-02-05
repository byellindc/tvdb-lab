class ShowsController < ApplicationController

  before_action :get_show, only: [:show, :edit, :update]

  def index
    @shows = Show.all
  end

  def show
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)

    if @show.save
      redirect_to show_path(@show)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @show.update(show_params)
      redirect_to show_path(@show)
    else
      render :edit
    end
  end

  def destroy
    Show.destroy(params[:id])
    redirect_to shows_path
  end

  private

  def show_params
    params.require(:show).permit(:title, :description)
  end

  def get_show
    @show = Show.find(params[:id])
  end

end

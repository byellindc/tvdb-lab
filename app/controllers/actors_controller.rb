class ActorsController < ApplicationController

  before_action :get_actor, only: [:show, :edit, :update]

  def index
    @actors = Actor.all
  end

  def show
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to actor_path(@actor)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @actor.update(actor_params)
      redirect_to actor_path(@actor)
    else
      render :edit
    end
  end

  def destroy
    Actor.destroy(params[:id])
    redirect_to actors_path
  end

  private

  def actor_params
    params.require(:actor).permit(:name, :photo)
  end

  def get_actor
    @actor = Actor.find(params[:id])
  end
end

require 'pry'

class EpisodesController < ApplicationController

  before_action :get_episode, only: [:show, :edit, :update]
  before_action :update_actors, only: [:create, :update]

  def index
    @shows = Show.all
  end

  def search
    # params[:q]
    @episodes = Episode.search(params[:q])
    @query = params[:q]
    render :results
  end

  def show
  end

  def new
    @episode = Episode.new
    @actors = Actor.all
    @shows = Show.all
  end

  def create
    @episode = Episode.new(episode_params)

    if @episode.save
      redirect_to episode_path(@episode)
    else
      render :new
    end
  end

  def edit
    @actors = Actor.all
    @actors = Actor.all
    @shows = Show.all
  end

  def update
    if @episode.update(episode_params)
      redirect_to episode_path(@episode)
    else
      render :edit
    end
  end

  def destroy
    Episode.destroy(params[:id])
    redirect_to episodes_path
  end

  private

  def episode_params
    params.require(:episode).permit(:title, :runtime, :date, :show_id, :actors)
  end

  def get_episode
    @episode = Episode.find(params[:id])
  end

  def update_actors
    params[:episode][:actors].each do |actor_id|
      unless @episode.actors.find_by(id: actor_id)
        @episode.actors << Actor.find(actor_id)
      end
    end
  end
end

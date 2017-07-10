class EpisodesController < ApplicationController

  before_action :find_episode, only: [:show, :edit, :update]

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
  end

  def show
    
  end

  def edit
  end

  def update
  end

  private
    def find_episode
      @episode = Episode.find(params[:id])
    end

end

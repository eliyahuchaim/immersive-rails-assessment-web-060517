class AppearancesController < ApplicationController

  # before_action :find_guest, only: [:create]
  # before_action :find_episode, only: [:create]

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @guest = Guest.find_by_name(params[:appearance][:guest_id])
    @episode = Episode.find(params[:appearance][:episode_id])
    Appearance.create(guest_id: @guest.id, episode_id: @episode.id)
    redirect_to :show
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  private

  def find_guest
    @guest = Guest.find_by_name(params[:appearance][:guest_id])
  end

  def find_episode
    @episode = Episode.find_by_number(params[:appearance][:id])
  end


end


# Michael J.Fox
#
# Episode 1 - September 08, 2015

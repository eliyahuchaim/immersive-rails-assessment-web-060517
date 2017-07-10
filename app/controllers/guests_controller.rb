class GuestsController < ApplicationController

  before_action :find_guest, only: [:show, :edit, :update]

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
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

  def find_guest
    @guest = Guest.find(params[:id])
  end


end

class ActorsController < ApplicationController
  def show
    @actor = Actor.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  
end

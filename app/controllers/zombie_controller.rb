class ZombieController < ApplicationController
  def show
  	@zombie = Zombie.find(params[:id])
  end

  def index
  	@zombies = Zombie.all
  end

  def new
  	@zombie = Zombie.new
  end

  def create
  	zombie = Zombie.create(params[:zombie])
    session[:zombie] = zombie
  	redirect_to zombie_index_path
  end
end
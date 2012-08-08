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

  def edit
      # @zombie = session[:zombie]
    @update_zombie = Zombie.find(params[:id])
    # @update_zombie.name = params[:name]
    # @update_zombie.graveyard = params[:graveyard]
    
    # @update_zombie.save
  end

  def update
    update_zombie = Zombie.find(params[:id])
    update_zombie.name = params[:name]
    update_zombie.graveyard = params[:graveyard]
    
    update_zombie.save!

    redirect_to zombie_path

  end

end

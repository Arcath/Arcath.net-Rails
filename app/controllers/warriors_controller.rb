class WarriorsController < ApplicationController
  def index
  	@warriors = {}
  	Warrior::TOWERS.keys.each do |key|
  		@warriors[key] = Warrior.all(:conditions => ["tower = ?",key], :order => "score DESC")
    	end
  end
  
  def show
    @warrior = Warrior.find(params[:id])
  end
  
  def new
    @warrior = Warrior.new
  end
  
  def create
    @warrior = Warrior.new(params[:warrior])
    if @warrior.save
      flash[:notice] = "Successfully created warrior."
      redirect_to @warrior
    else
      render :action => 'new'
    end
  end
  
  def edit
    @warrior = Warrior.find(params[:id])
  end
  
  def update
    @warrior = Warrior.find(params[:id])
    if @warrior.update_attributes(params[:warrior])
      flash[:notice] = "Successfully updated warrior."
      redirect_to @warrior
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @warrior = Warrior.find(params[:id])
    @warrior.destroy
    flash[:notice] = "Successfully destroyed warrior."
    redirect_to warriors_url
  end
end

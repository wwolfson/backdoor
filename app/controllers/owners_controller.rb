class OwnersController < ApplicationController

def new
	@owner = Owner.new
end

def index
  @owners = Owner.all
end

def show
  @owner = Owner.find(params[:id])
end

def create
  @owner = Owner.new(owner_params)
 
  if @owner.save
  redirect_to @owner
	else render 'new'
	end
  end
  
 def destroy
  @owner = Owner.find(params[:id])
  @owner.destroy
 
  redirect_to owners_path
end
 
private
  def owner_params
    params.require(:owner).permit(:name)
  end

end

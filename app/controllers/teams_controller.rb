class TeamsController < ApplicationController

def new
	@team = Teams.new
end

def index
  @teams = Teams.all
end

def show
  @team = Teams.find(params[:id])
end

def create
  @team = Teams.new(team_params)
  
  if @team.save
  redirect_to teams_path
	else render 'new'
	end
end

 def destroy
  @team = Teams.find(params[:id])
  @team.destroy
 
  redirect_to teams_path
end
private
  def team_params
    params.require(:team).permit(:team_name, :team_seed)
  end

end

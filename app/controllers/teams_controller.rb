class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end
  def show
    @team = Team.find(params[:id])
  end
  def new
    @team = Team.new
  end
  def create
    @team = Team.create(team_name: params[:team][:team_name],coach:params[:team][:coach])
    redirect_to teams_path
   end
   def edit
      @team = Team.find(params[:id])
  end
  def update
    @team= Team.find(params[:id])
    @team.update(name: params[:house][:name])
    redirect_to team_path
  end
  def destroy
    @team= Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end
end

class TeamController < ApplicationController
  def create
    @users = User.all
    flash[:message] = 'user_all'
    @user = User.new

    @team = Team.new(team_paramter)
    @team.save
    flash.now[:message] = "team_all"
  end

  private

  def team_paramter
    params.expect(team: {})
  end
end

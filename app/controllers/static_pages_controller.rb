class StaticPagesController < ApplicationController

  def index
    @title = "_Challenge_A_Day"
  end

  def stats
    @title = "_Stats"
    @user = current_user
    @completed_challenges = @user.completed_challenges
    @statuses = @user.statuses
  end

end

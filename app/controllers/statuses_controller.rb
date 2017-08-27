class StatusesController < ApplicationController

  def create
    @status = current_user.statuses.new(status_params)
    @status.challenge_id = current_challenge.id
    @status.complete_date = Date.today
    if @status.save
      redirect_to root_url
    else
      redirect_to root_url
    end


  end

  private
  def status_params
    params.require(:status).permit(:passed, :difficulty)
  end

  def current_challenge
    Challenge.find(current_user.challenge_id)
  end
end

class HomeController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
    @events = Event.all
  end
  
  def teamlist
    @teams=Team.where(event_id: params[:id])
  end
  def join
    TeamJob.create(user_id: current_user.id,job_id: params[:job_id], team_id: params[:team_id], leader: true)
    redirect_to :back
  end
end

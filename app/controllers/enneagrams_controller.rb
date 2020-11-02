class EnneagramsController < ApplicationController
  before_action :move_to_session
  def index
  end

  def new
    @enneagram = Enneagram.new
  end

  def create
    @enneagram = Enneagram.new(enneagram_params)
    if @enneagram.valid?
      @enneagram.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def move_to_session
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  def enneagram_params
    params.require(:enneagram).permit(:result_id, :perfectionist_sum, :giver_sum, :achiever_sum, :individualist_sum, :investigator_sum, :skeptic_sum, :enthusiast_sum, :challenger_sum, :peacemaker_sum).merge(user_id: current_user.id)
  end
end

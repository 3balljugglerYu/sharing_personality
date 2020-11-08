class EnneagramsController < ApplicationController
  before_action :move_to_session
  before_action :move_to_index, only: [:new]
  before_action :move_to_new, only: [:index]

  def index
    @enneagrams = Enneagram.all
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
    redirect_to new_user_session_path unless user_signed_in?
  end

  def move_to_new
    @enneagram_user = Enneagram.find_by(user_id: current_user.id)
    return redirect_to new_enneagram_path if @enneagram_user.nil?
  end

  def move_to_index
    @enneagram_user = Enneagram.find_by(user_id: current_user.id)
    return redirect_to root_path unless @enneagram_user.nil?
  end

  def enneagram_params
    params.require(:enneagram).permit(:result_id, :perfectionist_sum, :giver_sum, :achiever_sum, :individualist_sum, :investigator_sum, :skeptic_sum, :enthusiast_sum, :challenger_sum, :peacemaker_sum).merge(user_id: current_user.id)
  end
end

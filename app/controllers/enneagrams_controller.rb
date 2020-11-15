class EnneagramsController < ApplicationController
  before_action :move_to_session, except: [:about]
  before_action :set_current_user, only: [:index, :new]
  before_action :set_enneagram, only: [:edit, :update]

  def index
    return redirect_to new_enneagram_path if @enneagram_user.nil?
    @enneagrams = Enneagram.all
  end

  def new
    return redirect_to root_path unless @enneagram_user.nil?
    @enneagram = Enneagram.new
  end

  def create
    @enneagram = Enneagram.new(enneagram_params)
    if @enneagram.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @enneagram.update(enneagram_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def about
    @user = User.new
  end

  private

  def move_to_session
    redirect_to enneagrams_about_path unless user_signed_in?
  end

  def set_current_user
    @enneagram_user = Enneagram.find_by(user_id: current_user.id)
  end

  def set_enneagram
    @enneagram = Enneagram.find(params[:id])
  end

  def enneagram_params
    params.require(:enneagram).permit(:result_id, :perfectionist_sum, :giver_sum, :achiever_sum, :individualist_sum, :investigator_sum, :skeptic_sum, :enthusiast_sum, :challenger_sum, :peacemaker_sum).merge(user_id: current_user.id)
  end
end

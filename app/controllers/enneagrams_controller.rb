class EnneagramsController < ApplicationController
  before_action :move_to_session
  def index
  end

  def new
  end

  private

  def move_to_session
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end

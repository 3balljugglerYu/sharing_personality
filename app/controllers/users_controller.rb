class UsersController < ApplicationController
  before_action :move_to_new, only: [:show]
  def show
    @user = User.find(params[:id])
    @enneagrams = Enneagram.all
  end

  private

  def move_to_new
    @enneagram_user = Enneagram.find_by(user_id: params[:id])
    return redirect_to root_path if @enneagram_user == nil
  end
end

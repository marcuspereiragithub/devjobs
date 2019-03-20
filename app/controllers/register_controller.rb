class RegisterController < ApplicationController
  def index
    @users = User.all
    if params[:id]
      @selected_user = User.find(params[:id])
    else
      @selected_user = User.last
    end
  end
end


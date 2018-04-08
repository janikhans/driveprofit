class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @brands = Brand.all
  end
end

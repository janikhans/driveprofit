class App::UsersController < App::ApplicationController
  def show
    @user = User.find(params[:id])
    @payouts = @user.payouts
    @campaigns = @user.campaigns
  end
end

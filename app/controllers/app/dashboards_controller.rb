class App::DashboardsController < App::ApplicationController
  def show
    @campaigns = current_user.campaigns
    @payouts = current_user.payouts
  end
end

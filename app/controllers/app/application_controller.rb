class App::ApplicationController < ApplicationController
  before_action :authenticate_user!

  layout 'app/application'
end

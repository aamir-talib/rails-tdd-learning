class HomeController < ApplicationController

  authorize_resource class: false, except: :index

  def index

  end

  def profile
    @user = current_user
  end

end

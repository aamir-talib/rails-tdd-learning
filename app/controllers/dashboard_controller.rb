class DashboardController < ApplicationController

  before_action :authenticate_user!
  authorize_resource class: false

  before_action :set_user


  def index
    role = params[:role]
    if (role && @user.roles.include?(role))
      render "dashboard/index_#{role}" rescue nil
      return
    end
  end


  private

  def set_user
    @user = current_user
  end

end

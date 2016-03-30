class DashboardController < ApplicationController

  before_action :authenticate_user!
  authorize_resource class: false


  def index
    role = params[:role]
    render "dashboard/index_#{role}" if role rescue nil
  end


  private

  def set_user
    @user = current_user
  end

end

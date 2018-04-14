class DashboardController < ApplicationController
  def show
    @megaphone = Megaphone.new
    @megaphones = current_user.megaphones
  end
end

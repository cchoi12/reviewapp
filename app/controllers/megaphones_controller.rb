class MegaphonesController < ApplicationController
  def new

  end

  def create
    megaphone = current_user.megaphones.create(megaphone_params)
    redirect_to root_path, redirect_options_for(megaphone)
  end

  private

  def megaphone_params
    params.require(:megaphone).permit(:body)
  end

  def redirect_options_for(megaphone)
    if megaphone.persisted?
      { notice: 'Megaphone success!' }
    else
      { alert: 'Megaphone unsuccessful' }
    end
  end
end

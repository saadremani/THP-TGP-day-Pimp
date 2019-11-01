class ProfilController < ApplicationController
  def show_profil
		@user = User.find(params[:id])
  end
end

class UtilisateursController < ApplicationController
  def new
    @utilisateur = Utilisateur.new
  end

  def show
    @utilisateur = Utilisateur.find(params[:id])
  end

  def create
    puts :utilisateur
    @utilisateur = Utilisateur.new(utilisateur_params)
    if @utilisateur.save
      flash[:success] = "Bienvenue!"
        redirect_to @utilisateur
    else
      render 'new'
    end
  end

  def utilisateur_params
    params.require(:utilisateur).permit(:nom, :email, :password, :password_confirmation)
  end
end

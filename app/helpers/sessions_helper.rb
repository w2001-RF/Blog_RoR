module SessionsHelper
  def log_in(Utilisateur)
    session[:utilisateur] = utilisateur.id
  end
end

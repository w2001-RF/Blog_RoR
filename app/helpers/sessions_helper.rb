module SessionsHelper
  def log_in(Utilisateur)
    session[:utilisateur_id] = utilisateur.id
  end
end

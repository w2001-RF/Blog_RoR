require "test_helper"

class UtilisateurTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @utilisateur = Utilisateur.new(nom: "prenom1 Nom1",
                   email: "prenom1@example.com")
  end

  test "nom foit etre present" do
    @Utilisateur.nom = ""
    assert_not @utilisateur.valid?
  end

end

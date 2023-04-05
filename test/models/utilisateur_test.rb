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
    @utilisateur.nom = ""
    assert_not @utilisateur.valid?
  end

  test "email foit etre present" do
    @utilisateur.email = ""
    assert_not @utilisateur.valid?
  end

  test "nom ne doit pas etre trop long" do
    @utilisateur.email = "a" * 51
    assert_not @utilisateur.valid?
  end

  test "email ne doit pas etre trop long" do
    @utilisateur.email = "a" * 244 + "@example.com"
    assert_not @utilisateur.valid?
  end

end

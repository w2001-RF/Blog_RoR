class Utilisateur < ApplicationRecord
  validates :nom, presence: true, length: {maximum:50}
  validates :email, presence: true, length: {maximum:255}
end

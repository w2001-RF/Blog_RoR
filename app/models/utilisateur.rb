class Utilisateur < ApplicationRecord
  validates :nom, presence: true
end

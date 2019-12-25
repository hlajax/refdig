class Sexe < ApplicationRecord
	extend FriendlyId
  friendly_id :libelle, use: :slugged
	has_many :apprenant
end

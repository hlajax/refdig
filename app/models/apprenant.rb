class Apprenant < ApplicationRecord
	extend FriendlyId
  friendly_id :nom, use: :slugged
	belongs_to :sexe
	belongs_to :etat
	has_rich_text :description
	has_rich_text :attentes
	mount_uploader :photo, PhotoUploader
end

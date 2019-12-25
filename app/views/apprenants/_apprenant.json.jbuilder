json.extract! apprenant, :id, :nom, :telephone, :mail, :formation, :description, :attentes, :projet, :created_at, :updated_at
json.url apprenant_url(apprenant, format: :json)

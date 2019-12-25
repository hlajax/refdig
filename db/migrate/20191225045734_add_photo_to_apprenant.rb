class AddPhotoToApprenant < ActiveRecord::Migration[6.0]
  def change
    add_column :apprenants, :photo, :string
  end
end

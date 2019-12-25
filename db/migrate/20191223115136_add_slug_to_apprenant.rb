class AddSlugToApprenant < ActiveRecord::Migration[6.0]
  def change
    add_column :apprenants, :slug, :string
    add_index :apprenants, :slug, unique: true
  end
end

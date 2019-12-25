class AddSlugToEtat < ActiveRecord::Migration[6.0]
  def change
    add_column :etats, :slug, :string
    add_index :etats, :slug, unique: true
  end
end

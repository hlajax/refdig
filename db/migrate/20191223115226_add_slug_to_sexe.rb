class AddSlugToSexe < ActiveRecord::Migration[6.0]
  def change
    add_column :sexes, :slug, :string
    add_index :sexes, :slug, unique: true
  end
end

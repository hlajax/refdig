class CreateEtats < ActiveRecord::Migration[6.0]
  def change
    create_table :etats do |t|
      t.string :libelle

      t.timestamps
    end
  end
end

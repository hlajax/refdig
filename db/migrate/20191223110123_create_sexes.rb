class CreateSexes < ActiveRecord::Migration[6.0]
  def change
    create_table :sexes do |t|
      t.string :libelle

      t.timestamps
    end
  end
end

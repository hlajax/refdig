class CreateApprenants < ActiveRecord::Migration[6.0]
  def change
    create_table :apprenants do |t|
      t.string :nom
      t.string :telephone
      t.string :mail
      t.string :formation
      t.text :description
      t.text :attentes
      t.string :projet

      t.timestamps
    end
  end
end

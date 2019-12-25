class AddPrenomsToApprenant < ActiveRecord::Migration[6.0]
  def change
    add_column :apprenants, :prenoms, :string
  end
end

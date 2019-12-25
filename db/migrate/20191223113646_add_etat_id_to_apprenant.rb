class AddEtatIdToApprenant < ActiveRecord::Migration[6.0]
  def change
    add_column :apprenants, :etat_id, :integer
  end
end

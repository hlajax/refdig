class AddSexeIdToApprenant < ActiveRecord::Migration[6.0]
  def change
    add_column :apprenants, :sexe_id, :integer
  end
end

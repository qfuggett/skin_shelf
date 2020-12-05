class AddRoutineIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :routine_id, :integer
  end
end

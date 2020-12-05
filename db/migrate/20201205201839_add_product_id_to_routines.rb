class AddProductIdToRoutines < ActiveRecord::Migration[6.0]
  def change
    add_column :routines, :product_id, :integer
  end
end

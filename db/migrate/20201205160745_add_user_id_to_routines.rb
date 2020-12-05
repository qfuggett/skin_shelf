class AddUserIdToRoutines < ActiveRecord::Migration[6.0]
  def change
    add_column :routines, :user_id, :integer
  end
end

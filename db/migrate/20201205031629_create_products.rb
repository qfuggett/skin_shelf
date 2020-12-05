class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :active_ingredient_1
      t.string :active_ingredient_2

      t.timestamps
    end
  end
end

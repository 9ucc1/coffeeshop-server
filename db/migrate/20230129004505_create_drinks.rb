class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.boolean :decaf
      t.float :price
      t.string :ingredients
      t.string :description
      t.integer :shop_id
    end
  end
end

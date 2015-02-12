class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :brand
      t.decimal :price, precision: 7, scale: 2
      t.integer :screen_size
      t.references :store, index:true

      t.timestamps null: false
    end
  end
end

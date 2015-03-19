class AddPetStatusToPets < ActiveRecord::Migration
  def change
    add_column :pets, :Pet_Status, :string
  end
end

class AddCpuToComputer < ActiveRecord::Migration
  def change
    add_column :computers, :cpu, :integer
  end
end
